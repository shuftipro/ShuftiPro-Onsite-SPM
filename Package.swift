// swift-tools-version:5.9

import PackageDescription

let frameworkRepo = "ShuftiPro-Onsite-SPM"
let version = "1.4.7"
let frameworkZip = "ShuftiPro.xcframework.zip"
let checksumValue = "2a4c16f805f86acc3bb4b29bba96204066c38b2f851810781ef52780c721c862"
let package = Package(
    name: "ShuftiPro-Onsite-SPM",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ShuftiPro",
            targets: ["ShuftiPro"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ShuftiPro",
            url: "https://github.com/shuftipro/\(frameworkRepo)/releases/download/\(version)/\(frameworkZip)",
            checksum: checksumValue
        )
    ]
)
