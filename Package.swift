// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "MongoDriver",
    products: [
        .library(name: "MongoDriver", targets: ["MongoDriver"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/fluent.git", .upToNextMajor(from: "2.4.1")),
        .package(url: "https://github.com/OpenKitten/MongoKitten.git", from: "4.0.19")
    ],
    targets: [
        .target(name: "MongoDriver", dependencies: ["Fluent", "MongoKitten"]),
        .testTarget(name: "MongoDriverTests", dependencies: ["MongoDriver", "FluentTester"])
    ]
)
