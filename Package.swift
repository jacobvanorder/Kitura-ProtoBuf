import PackageDescription

let package = Package(
    name: "ProtoBuf",
    dependencies:
    [
      .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 1, minor: 0)
    ]
)
