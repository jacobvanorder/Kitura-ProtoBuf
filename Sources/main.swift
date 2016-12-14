import Kitura
import HeliumLogger
import SwiftyJSON
import Foundation

class Service {
    
    let router = Router()
    var allCards: [BaseballCard] = [BaseballCard]()
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        formatter.dateStyle = .short
        return formatter
    }()
    
    init() {
        HeliumLogger.use()
        
        router.all(middleware: BodyParser())
        
        router.get("/", handler: {
            request, response, next in
            response.send("It is: \(self.dateFormatter.string(from: Date()))")
            next()
        })
        
        router.get("/json", handler: {
            request, response, next in
            let dictionary = ["It is" : self.dateFormatter.string(from: Date())]
            let json = JSON(dictionary)
            response.send(json: json)
            next()
        })
        
        router.get("/card", handler: {
            request, response, next in
            
            defer { next() }
            
            guard let accept = request.headers["Accept"] else {
                response.send(status: .badRequest).send("No Accept in headers.")
                return
            }
            
            guard let card = self.allCards.last else {
                response.send("No cards found")
                return
            }
            
            switch accept {
            case "application/json":
                let jsonString = try card.serializeJSON()
                response.send(jsonString)
                break
            case "application/octet-stream":
                let data = try card.serializeProtobuf()
                response.send(data: data)
                break
            default:
                response.send(status: .badRequest).send("Accept type is incorrect.")
                return
            }
        })
        
        router.get("/cards", handler: {
            request, response, next in
            
            defer { next() }
            
            guard let accept = request.headers["Accept"] else {
                response.send(status: .badRequest).send("No Accept in headers.")
                return
            }
            
            let cards = BaseballCards(all: self.allCards)
            
            switch accept {
            case "application/json":
                let jsonString = try cards.serializeJSON()
                response.send(jsonString)
                break
            case "application/octet-stream":
                let data = try cards.serializeProtobuf()
                response.send(data: data)
                break
            default:
                response.send(status: .badRequest).send("Accept type is incorrect.")
                return
            }
        })
        
        router.post("/card", handler: {
            request, response, next in
            defer { next() }
            
            guard let body = request.body else {
                response.send(status: .badRequest).send("No body in request.")
                return
            }
            
            let card: BaseballCard
            
            switch body {
            case .raw(let data):
                    card = try BaseballCard.init(protobuf: data)
                break
            case .json(let data):
                guard let jsonString = data.rawString() else {
                    response.status(.badRequest)
                    return
                }
                card = try BaseballCard.init(json: jsonString)
            break
            default:
                response.status(.badRequest).send("Content-Type is incorrect.")
                return
            }
            
            self.allCards.append(card)
            
            response.status(.OK).send("Added: \(card.playerName)")
        })
    }
}

let service = Service()

Kitura.addHTTPServer(onPort: 8090, with: service.router)
Kitura.run()
