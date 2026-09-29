
import PackageDescription

let frameworkRepo = "ShuftiPro-Onsite-SPM"
let version = "1.0.51"
let frameworkZip = "ShuftiPro.xcframework.zip"
let checksumValue = "d3d41d92f575b96db50566c04d85a054f89fa93db9711e031fedc25d06803bc6"

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
