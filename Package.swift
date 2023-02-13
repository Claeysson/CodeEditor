// swift-tools-version:5.5

import PackageDescription

let package = Package(
  
  name: "CodeEditor",

  platforms: [
    .macOS(.v10_15), .iOS(.v13)
  ],

  products: [
    .library(name: "CodeEditor", targets: [ "CodeEditor" ])
  ],
  
  dependencies: [
    .package(url: "https://github.com/raspu/Highlightr.git", branch: "master")
  ],
           
  targets: [
    .target(name: "CodeEditor", dependencies: [ "Highlightr" ])
  ]
)
