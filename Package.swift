// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SpecifableResponder",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "SpecifableResponder", targets: ["SpecifableResponder"]),
    ],
    targets: [
        .target(name: "SpecifableResponder", dependencies: []),
        .testTarget(name: "SpecifableResponderTests", dependencies: ["SpecifableResponder"]),
    ]
)
