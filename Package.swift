// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxBluetoothKit",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "RxBluetoothKit", targets: ["RxBluetoothKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.1.1"))
    ],
    targets: [
        .target(
                name: "RxBluetoothKit",
                dependencies: [
                    "RxSwift"
                ],
                path: ".",
                exclude: [
                    "Example",
                    "Tests",
                    "Source/Info.plist",
                    "Source/RxBluetoothKit.h"
                ],
                sources: [
                    "Source"
                ]
            )
    ]
)
