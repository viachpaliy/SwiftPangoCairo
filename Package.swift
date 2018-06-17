import PackageDescription

let package = Package(
    name: "PangoCairo",
    dependencies: [
        .Package(url: "https://github.com/viachpaliy/SwiftCairo.git", majorVersion: 2),
        .Package(url: "https://github.com/viachpaliy/SwiftPango.git", majorVersion: 2)
    ],
    swiftLanguageVersions: [3]
)
