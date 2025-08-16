// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "dojah_kyc_sdk_flutter",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "dojah-kyc-sdk-flutter",
            targets: ["dojah_kyc_sdk_flutter"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/dojah-inc/sdk-swift.git", branch: "main")
    ],
    targets: [
        .target(
            name: "dojah_kyc_sdk_flutter",
            dependencies: [
                .product(name: "DojahWidget", package: "sdk-swift")
            ],
            path: "Sources/dojah_kyc_sdk_flutter",
            resources: [
                .process("Resources")
            ]
        )
    ]
)
