import Foundation
import Vapor

let app = Application()

app.get("/") { request in
    return "Hello, 🌏, Swift!"
}

print("Starting: port 8080")

app.start(port: 8080)
