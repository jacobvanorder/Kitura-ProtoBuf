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

Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
