// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SPMBug",
	products: [
		// Products define the executables and libraries a package produces, and make them visible to other packages.
		.library(
			name: "SPMBug",
			targets: ["SPMBug"]),
		.library(
			name: "SPMBugTrigger",
			targets: ["SPMBugTrigger"]),
	],
	dependencies: [],
	targets: [
		.target(
			name: "SPMBug",
			dependencies: ["SPMBugTrigger"]),
		.target(
			name: "SPMBugTrigger",
			dependencies: [],
			// it appears that the problem is having resources in a dependent target using ios
			resources: [
				.copy("Resources")
			]
		),
		.testTarget(
			name: "SPMBugTests",
			dependencies: ["SPMBug"]),
	]
)
