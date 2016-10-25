import Kitura
import HeliumLogger
import Foundation
import SwiftyJSON

HeliumLogger.use()
let router = Router()

let formatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.timeStyle = .medium
    return formatter
}()

let iso8601Formatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.calendar = Calendar(identifier: .iso8601)
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.timeZone = TimeZone(secondsFromGMT: 0)
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
    return formatter
}()

router.get("/", handler: {
    request, response, next in
    response.send("It is currently: \(formatter.string(from: Date()))")
    next()
})

router.get("/json/") {
    (request, response, next) in
    let jsonDictionary = ["now": iso8601Formatter.string(from: Date())]
    let json = JSON(obj: jsonDictionary)
    response.send(json: json)
    next()
}

Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
