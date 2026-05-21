// swift-tools-version:5.3

import PackageDescription

let frameworkRepo = "ShuftiPro-Onsite-Framework"
let version = "1.0.17"
let frameworkZip = "ShuftiPro.xcframework.zip"
let checksumValue = "b0489e76d9052e800a638377be13a6d14de7be8a8946348d51f17a198d8e71d5"

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
