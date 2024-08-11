// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteSwift",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TensorFlowLiteSwift",
            targets: ["TensorFlowLite"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Igor-Khomich/TensorFlowLiteC.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "TensorFlowLite",
            dependencies: ["TensorFlowLiteC"]),
    ]
)
