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
    dependencies: [
        .package(url: "https://github.com/socketio/socket.io-client-swift", from: "16.1.0" )

        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
   

    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        
        .binaryTarget(
                name: "ShuftiPro",
                url:"https://github.com/shuftipro/ShuftiPro-Onsite-Framework/raw/main/ShuftiPro.xcframework.zip",
                checksum: "f2d0cb2755645bb9cda55db3a776f189f4f0fca2577d72709076c3c34d5710f4"
                      ),
        .target(
            name: "PackageDependencies",
            dependencies: [ .product(name: "SocketIO", package: "socket.io-client-swift")],
            path: "Sources",
            resources: [
                .process("Resource/Media.xcassets")
            ]),
   
    ]
)
