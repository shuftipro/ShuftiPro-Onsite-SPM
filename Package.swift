// swift-tools-version:5.3

import PackageDescription

let frameworkRepo = "ShuftiPro-Onsite-Framework"
let version = "1.0.18"
let frameworkZip = "ShuftiPro.xcframework.zip"
let checksumValue = "804afcf6e47ade663d2d5d70b83655c2e4b509b89b18d00f7d9d336d0e4474b3"

let package = Package(
    name: "ShuftiPro",
    platforms: [.iOS(.v13)],
    
    products: [
        .library(
            name: "ShuftiPro",
            targets: ["PackageDependencies", "ShuftiPro"]
        ),
    ],
    
    targets: [
        
        .binaryTarget(
            name: "ShuftiPro",
            url: "https://github.com/ShuftiPro/\(frameworkRepo)/releases/download/\(version)/\(frameworkZip)",
            checksum: checksumValue
        ),
        
            .target(
                name: "PackageDependencies",
                path: "Sources",
                resources: [
                    .process("Resource/Media.xcassets")
                ]
            ),
    ]
)
