// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "MongoDriver",
    products: [
        .library(name: "MongoDriver", targets: ["MongoDriver"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/fluent.git", from: "2.5.1"),
        .package(url: "https://github.com/OpenKitten/MongoKitten.git", from: "4.0.20")
    ],
    targets: [
        .target(name: "MongoDriver", dependencies: ["Fluent", "MongoKitten"]),
        .testTarget(name: "MongoDriverTests", dependencies: ["MongoDriver", "FluentTester"])
    ]
)
