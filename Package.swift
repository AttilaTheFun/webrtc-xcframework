// swift-tools-version:5.9
// (Xcode15.0+)

import PackageDescription

let package = Package(
    name: "LiveKitWebRTC",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .macCatalyst(.v14),
    ],
    products: [
        .library(
            name: "LiveKitWebRTC",
            targets: ["LiveKitWebRTC"]
        ),
    ],
    dependencies: [],
    targets: [
        // LiveKit 150.7871.02 with the macOS and Mac Catalyst privacy manifest
        // moved from Versions/A/Versions/A/Resources to Versions/A/Resources
        // (binaries unchanged), until webrtc-sdk/webrtc#318 ships in a release.
        .binaryTarget(
            name: "LiveKitWebRTC",
            url: "https://github.com/AttilaTheFun/webrtc-xcframework/releases/download/150.7871.02-privacy-fix/LiveKitWebRTC.xcframework.zip",
            checksum: "1cfae3dd22a82bc94f9d0aaddfc0fd944a9bf8e7a8f7957a9a40ddcbfd63e4ef"
        ),
    ]
)
