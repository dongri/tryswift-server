import PackageDescription

let package = Package(
    name: "tryswift",
    dependencies: [
        .Package(url: "https://github.com/qutheory/vapor.git", majorVersion: 0),
    ]
)
