// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "test-release",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "test-release",
            targets: ["test-release"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
		// Targets can depend on other targets in this package, and on products in packages this package depends on.
		.target(
			name: "test-release",
			dependencies: []
		),
		.binaryTarget(
			name: "MobileAnalytics",
			url: "https://github.com/MobileCI-QIC/test-release/releases/download/0.0.2/Analytics.xcframework.zip",
			checksum: "8aac753a236935ce2b22aa8cb395d3453659ea6c70d2053895af23dfec376a32"
		),
    ]
)
