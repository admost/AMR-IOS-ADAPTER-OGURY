// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterOgury",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AMRAdapterOgury",
            targets: ["AMRAdapterOgury"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.85"),
        .package(url: "https://github.com/ogury/ogury-sdk-spm.git", .exact("5.2.3"))
    ],
    targets: [
        .target(
            name: "AMRAdapterOgury",
            dependencies: [
                "AMRAdapterOguryLib",
                .product(name: "OgurySdk", package: "ogury-sdk-spm"),
                .product(name: "AMRSDK", package: "AMR-IOS-SDK")
            ],
            path: "AMRAdapterOgury",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterOguryLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-OGURY/releases/download/5.2.3/AMRAdapterOgury.xcframework.zip",
            checksum: "4fa825368911b484b4af4a441f9741f30b37e160a679e965a0caa7afa2e85c8f"
        )
    ]
)
