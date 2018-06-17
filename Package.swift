import PackageDescription

let package = Package(
    name: "PangoCairo",
    dependencies: [
        .Package(url: "https://github.com/viachpaliy/SwiftCairo.git",  majorVersion: 1),
        .Package(url: "https://github.com/viachpaliy/SwiftPango.git",  majorVersion: 1)
    ],
    swiftLanguageVersions: [3]
)
