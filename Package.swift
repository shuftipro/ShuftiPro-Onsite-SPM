// swift-tools-version:5.9

import PackageDescription

let frameworkRepo = "ShuftiPro-Onsite-SPM"
let version = "1.4.5"
let frameworkZip = "ShuftiPro.xcframework.zip"
let checksumValue = "d8ffcd34ac808474d3568fe35a8fbfb50b383ac6173525a784dca70d9fe01cb3"
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
