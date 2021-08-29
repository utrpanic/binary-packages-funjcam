// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Packages",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "Binary",
            targets: ["Binary"]),
        .library(
            name: "Source",
            targets: ["Source"]),
    ],
    dependencies: [
        .package(name: "_Source", path: "_Source")
    ],
    targets: [
        .binaryTarget(
            name: "Binary",
            path: "_Binary/BinaryPackages.xcframework"),
        .target(
            name: "Source",
            dependencies: ["_Source"])
    ]
)
