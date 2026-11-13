// swift-tools-version:5.9

import PackageDescription

let frameworkRepo = "ShuftiPro-Onsite-SPM"
let version = "1.4.8"
let frameworkZip = "ShuftiPro.xcframework.zip"
let checksumValue = "19372f8b4385b89faf533a3980a8ea918f5a5221ebcb9de2e64a732479e72580"
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
