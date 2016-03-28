import Foundation
import Vapor

let app = Application()

app.get("/") { request in
  let hello_world = "Hello, 🌏, Swift!"
  let github_url = "<p><a href='https://github.com/dongri/tryswift-server'>Github Repo</a></p>"
  return hello_world + github_url
}

app.get("/json") { request in
  return Json(["message": "Hello, 🌏, Swift!"])
}

print("Starting: port 8080")

app.start(port: 8080)
