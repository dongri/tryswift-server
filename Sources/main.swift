import Foundation
import Vapor

let app = Application()

app.get("/") { request in
    return "Hello, 🌏, Swift!"
}

app.get("/json") { request in
    return try Json([
        "string": "Hello, 🌏, Swift!"
    ])
}

app.get("/get") { request in
    let query = request.data.query
    do {
        return try Json(query)
    } catch _ {
        return "Failed"
    }
}

app.post("/post") { request in
    var stringQuery = request.data["string"] as! String
    var result = "\(stringQuery)"
    return try Json([
      "result": result
    ])
}

print("Starting: port 8080")

app.start(port: 8080)
