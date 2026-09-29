// swift-tools-version:5.3
import PackageDescription

// AZIntel iOS On-Prem SDK — Swift Package Manager distribution.
//
// The binary module is `ShuftiPro` (see ShuftiPro.xcframework), so client apps
// integrate the product below and then `import ShuftiPro`.
//
// This on-prem ("Onsite") framework is fully self-contained: all image assets
// are embedded in ShuftiPro.framework/Assets.car and resolved at runtime via the
// framework's own bundle. Unlike the public SDK, it therefore needs NO separate
// resource target (no PackageDependencies / Media.xcassets).
//
// Distribution: remote binary target. The XCFramework is shipped as a zip
// attached to a GitHub Release; SPM downloads and verifies it against the
// checksum. To publish a new version, bump `version` and `checksumValue`
// together — see RELEASING.md.

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
