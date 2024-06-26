// swift-tools-version: 5.8

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "CarboFoots",
    platforms: [
        .iOS("15.6")
    ],
    products: [
        .iOSApplication(
            name: "CarboFoots",
            targets: ["AppModule"],
            bundleIdentifier: "Adii.CarboFoots",
            teamIdentifier: "7KLFQ5HN5D",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .earth),
            accentColor: .presetColor(.pink),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)
