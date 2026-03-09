// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "KokteylLog",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "KokteylLog",
            targets: ["KKLog"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "KKLog",
            path: "KKLog/KKLog.xcframework"
        )
    ]
)
