// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShuftiPro",
    platforms: [.iOS(.v13) ],

    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ShuftiPro",
            targets: ["PackageDependencies" , "ShuftiPro"]),
    ],
   

    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        
        .binaryTarget(
                name: "ShuftiPro",
                url:"https://github.com/ShuftiPro/ShuftiPro-Onsite-Framework/releases/download/1.0.5/ShuftiPro.xcframework.zip",
                checksum: "6434958ac83d0556cfcb1f52677edf5d5366a256f8d5e9657d2e4f13aa933804"),
        .target(
            name: "PackageDependencies",
            path: "Sources",
            resources: [
                .process("Resource/Media.xcassets")
            ]),
   
    ]
)
