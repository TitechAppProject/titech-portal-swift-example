// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TitechPortalExample",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .watchOS(.v8),
        .tvOS(.v15)
    ],
    dependencies: [
        .package(url: "https://github.com/TitechAppProject/titech-portal-kit", from: "1.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "TitechPortalExample",
            dependencies: [.product(name: "TitechPortalKit", package: "titech-portal-kit")]),
    ]
)
