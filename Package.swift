// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.8.3"
let checksum = "8b6c60d350a5572f4240bd01837a305005d0aa389c00c9ff083291015d5d11f0"

let package = Package(
    name: "OpenCV",
    platforms: [
        .macOS(.v10_13), .iOS(.v12), .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "OpenCV",
            targets: ["opencv2"]),
    ],
    targets: [
        .binaryTarget(name: "opencv2",
                      url: "https://github.com/GoodNotes/opencv_mobi/releases/download/\(version)/opencv2.xcframework.zip",
                     checksum: "\(checksum)"
                     )
    ]
)
