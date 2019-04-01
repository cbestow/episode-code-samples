// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "EnumProperties",
  products: [
    // Products define the executables and libraries produced by a package, and make them visible to other packages.
    .executable(
      name: "enum-properties",
      targets: ["enum-properties"]),
    .library(
      name: "EnumProperties",
      targets: ["EnumProperties"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
    .package(url: "https://github.com/apple/swift-syntax.git", .exact("0.50000.0")),
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.5.0"),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages which this package depends on.
    .target(
      name: "enum-properties",
      dependencies: ["EnumProperties", "SwiftSyntax"]),
    .target(
      name: "EnumProperties",
      dependencies: ["SwiftSyntax"]),
    .testTarget(
      name: "EnumPropertiesTests",
      dependencies: ["EnumProperties", "SnapshotTesting"]),
  ]
)