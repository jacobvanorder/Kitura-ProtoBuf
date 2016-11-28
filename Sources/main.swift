import Kitura
import HeliumLogger
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

Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
