// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SwiftMessageBarPM",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "SwiftMessageBarPM",
            targets: ["SwiftMessageBarPM"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftMessageBarPM",
            path: "SwiftMessageBar",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "SwiftMessageBarTests",
            dependencies: ["SwiftMessageBarPM"],
            path: "SwiftMessageBarTests"
        ),
    ]
)
