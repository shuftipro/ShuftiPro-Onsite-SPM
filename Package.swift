// swift-tools-version:5.9

import PackageDescription

let frameworkRepo = "ShuftiPro-Onsite-SPM"
let version = "1.4.4"
let frameworkZip = "ShuftiPro.xcframework.zip"
let checksumValue = "94046d1d5d79f737b17660ad16be84b45b2f581ab4b811923858ab27e15036d4"
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
