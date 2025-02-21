// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Checkpoints",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Checkpoints",
            targets: ["Checkpoints"]),
    ],
    dependencies: [
        .package(url: "https://github.com/curdicu/HsExtensions.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(
            name: "Checkpoints",
            dependencies: [
                .product(name: "HsExtensions", package: "HsExtensions"),
            ],
            resources: [
                .copy("Assets")
            ]),
        .testTarget(
            name: "CheckpointTests",
            dependencies: [
                "Checkpoints",
                .product(name: "HsExtensions", package: "HsExtensions"),
            ]),
    ]
)
