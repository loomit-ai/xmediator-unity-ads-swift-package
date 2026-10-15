// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorUnityAds",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorUnityAds", targets: ["XMediatorUnityAdsTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package", exact: "4.21.0"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.47.0")),
    ],
    targets: [
        .target(
            name: "XMediatorUnityAdsTarget",
            dependencies: [
                .target(name: "XMediatorUnityAds"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "UnityAds", package: "Unity-Ads-Swift-Package"),
            ],
            path: "XMediatorUnityAdsTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorUnityAds",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorUnityAds/XMediatorUnityAds-4.21.0.0.zip",
            checksum: "1156ad00fcb53dc0cc91804384e678e295f64c9d0dad460315b0c8a938a5a209"
        ),
    ]
)
