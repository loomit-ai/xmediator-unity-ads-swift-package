// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorUnityAds",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorUnityAds", targets: ["XMediatorUnityAdsTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package", exact: "4.20.0"),
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
            linkerSettings: [
                .linkedFramework("AdSupport"),
            ]
        ),
        .binaryTarget(
            name: "XMediatorUnityAds",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorUnityAds/XMediatorUnityAds-4.20.0.0.zip",
            checksum: "7e862a8f9caf92f77de0c2d461999bc9fa6a949fc51e1086591200b19db447d2"
        ),
    ]
)
