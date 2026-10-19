// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "T-ID",
    defaultLocalization: "ru",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "TID",
            targets: ["TID"]
        )
    ],
    dependencies: [
        .package(
            url: "https://opensource.tbank.ru/mobile-tech/sslpinning",
            .upToNextMajor(from: "11.0.0")
        )
    ],
    targets: [
        .target(
            name: "TID",
            dependencies: [
                .product(name: "TCSSSLPinningPublic", package: "sslpinning")
            ],
            path: "Sources"
        )
    ]
)
