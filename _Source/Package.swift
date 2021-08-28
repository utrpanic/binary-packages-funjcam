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
        .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
        .package(name: "BoxKit", url: "https://github.com/utrpanic/box-kit-ios.git", .upToNextMajor(from: "2.0.0")),
        .package(name: "CHTCollectionViewWaterfallLayout", url: "https://github.com/chiahsien/CHTCollectionViewWaterfallLayout.git", .upToNextMajor(from: "0.0.0")),
        .package(name: "Kingfisher", url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "6.0.0")),
        .package(name: "ReactorKit", url: "https://github.com/ReactorKit/ReactorKit.git", .upToNextMajor(from: "3.0.0"))
    ],
    targets: [
        .target(
            name: "_Source",
            dependencies: [
                "Alamofire",
                "BoxKit",
                "CHTCollectionViewWaterfallLayout",
                "Kingfisher",
                "ReactorKit"
            ])
    ]
)
