// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "_Source",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "_Source",
            type: .static,
            targets: ["_Source"]),
    ],
    dependencies: [
        .package(name: "BoxKit", url: "https://github.com/utrpanic/box-kit-ios.git", .upToNextMajor(from: "2.0.0"))
    ],
    targets: [
        .target(
            name: "_Source",
            dependencies: [
                .product(name: "BoxKit", package: "BoxKit")
            ])
    ]
)
