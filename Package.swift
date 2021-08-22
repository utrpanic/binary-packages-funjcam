// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Packages",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "Packages",
            targets: ["Packages"]),
    ],
    dependencies: [
        .package(name: "BoxKit", url: "https://github.com/utrpanic/box-kit-ios", .upToNextMajor(from: "2.0.0")),
    ],
    targets: [
        .target(
            name: "Packages",
            dependencies: [
                .product(name: "BoxKit", package: "BoxKit")
            ])
    ]
)
