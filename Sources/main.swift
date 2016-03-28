import Foundation
import Vapor

let app = Application()

app.get("/") { request in
    return "Hello, 🌏, Swift!"
}

app.get("/json") { request in
  return Json(["message": "Hello, 🌏, Swift!"])
}

print("Starting: port 8080")

app.start(port: 8080)
