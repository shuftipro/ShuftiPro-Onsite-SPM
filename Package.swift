// swift-tools-version:5.9

import PackageDescription

let frameworkRepo = "ShuftiPro-Onsite-SPM"
let version = "1.4.3"
let frameworkZip = "ShuftiPro.xcframework.zip"
let checksumValue = "56603967ab72bcd3925d8d317ece91e421adab571340696075affaf33b1caf08"
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
