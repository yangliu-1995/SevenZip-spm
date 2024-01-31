// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "SevenZip-spm",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "SevenZip-spm",
            targets: ["SevenZip-spm"]),
        .library(name: "SevenZip", targets: ["SevenZip"]),
    ],
    targets: [
        .target(
            name: "SevenZip-spm",
            dependencies: [
                "SevenZip",
            ]
        ),
        .binaryTarget(name: "SevenZip", url: "https://github.com/yangliu-1995/SevenZip-spm/releases/download/1.0/SevenZip.xcframework.zip", checksum: "64e96851adcb220543baedd79efff8918c5a6396db1ec53f4937d4eddaa5f523"),
    ]
)
