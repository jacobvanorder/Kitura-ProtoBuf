import Kitura
import HeliumLogger
import Foundation

HeliumLogger.use()
let router = Router()

let formatter = DateFormatter()
formatter.timeStyle = .medium

router.get("/", handler: {
    request, response, next in
    response.send("It is currently: \(formatter.string(from: Date()))")
    next()
})

Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
