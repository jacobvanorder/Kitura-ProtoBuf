import Kitura
import HeliumLogger
import SwiftyJSON
import Foundation

HeliumLogger.use()

let router = Router()

let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.timeStyle = .short
    formatter.dateStyle = .short
    return formatter
}()

router.all(middleware: BodyParser())

router.get("/", handler: {
    request, response, next in
    response.send("It is: \(dateFormatter.string(from: Date()))")
    next()
})

router.get("/json", handler: {
    request, response, next in
    let dictionary = ["It is" : dateFormatter.string(from: Date())]
    let json = JSON(dictionary)
    response.send(json: json)
    next()
})

router.get("/card", handler: {
    request, response, next in
    
    defer {
        next()
    }
    
    guard let accept = request.headers["Accept"] else {
        response.send(status: .badRequest).send("No Accept in headers.")
        return
    }
    
    guard let path = Bundle.main.path(forResource: "baseballCardThumbnail", ofType: "jpg", inDirectory: nil) else { fatalError() }
    let thumbnailDataUrl = URL(fileURLWithPath:path)
    let card: BaseballCard
    do {
        let imageData = try Data(contentsOf: thumbnailDataUrl)
        card = BaseballCard(playerName: "Jay Johnstone",
                                teams: [.chicagoCubs],
                                positions: [.centerField],
                                year: 1984,
                                cardNumber: "495",
                                cardCompany: "Fleer",
                                fullImageURL: nil,
                                thumbnailImage: imageData)
    }
    catch { fatalError() }
    
    switch accept {
    case "application/json":
        let jsonString = try! card.serializeJSON()
        response.send(jsonString)
        break
    case "application/octet-stream":
        let data = try! card.serializeProtobuf()
        response.send(data: data)
        break
    default:
        response.send(status: .badRequest).send("No Accept in headers.")
        return
    }
})

Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
