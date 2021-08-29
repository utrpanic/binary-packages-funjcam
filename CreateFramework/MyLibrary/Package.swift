// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "MyLibrary",
            type: .static,
            targets: ["MyLibrary"]),
    ],
    dependencies: [
        .package(name: "_Source", path: "../../_Source")
    ],
    targets: [
        .target(
            name: "MyLibrary",
            dependencies: ["_Source"])
    ]
)
