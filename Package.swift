// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExpoFpIndoorAtlas",
    platforms: [.iOS(.v14)],

    products: [
        .library(
            name: "ExpoFpIndoorAtlas",
            targets: ["ExpoFpIndoorAtlasTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/expofp/expofp-common-ios-spm", exact: "4.9.0"),
    	.package(url: "https://github.com/IndoorAtlas/ios-spm", from: "3.6.7"),

    ],
    targets: [
        .target(
            name: "ExpoFpIndoorAtlasTarget",
            dependencies: [
                .product(name: "ExpoFpCommon", package: "expofp-common-ios-spm"),
                .product(name: "IndoorAtlas", package: "ios-spm"),
                .target(name: "ExpoFpIndoorAtlas")
            
            ], path: "ExpoFpIndoorAtlasTarget"),

        .binaryTarget(name: "ExpoFpIndoorAtlas",
                      path: "ExpoFpIndoorAtlas.xcframework"
                     ),

    ],
    swiftLanguageVersions: [.v5]
)
