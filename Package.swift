// swift-tools-version:5.9

import PackageDescription

let frameworkRepo = "ShuftiPro-Onsite-SPM"
let version = "1.4.0"
let frameworkZip = "ShuftiPro.xcframework.zip"
let checksumValue = "3b84375c60216e2fa80eeec482fbcf01b1e538d28170be62c37dfc50bfc687c5"

let package = Package(
    name: "ShuftiPro-Onsite-SPM",
    platforms: [
        .iOS(.v13)
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
