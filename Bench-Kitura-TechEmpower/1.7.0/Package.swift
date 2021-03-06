import PackageDescription

var dependencies: [Package.Dependency] = []

#if os(Linux)
dependencies += [
    .Package(url: "https://github.com/IBM-Swift/CEpoll.git", Version(0, 1, 0)),
    .Package(url: "https://github.com/IBM-Swift/OpenSSL.git", Version(0, 3, 1)),
    .Package(url: "https://github.com/PerfectlySoft/Perfect-libpq-linux.git", Version(2, 0, 1))
]
#else
dependencies += [
    .Package(url: "https://github.com/PerfectlySoft/Perfect-libpq.git", Version(2, 0, 0))
]
#endif

dependencies += [
    // self-contained dependencies
    .Package(url: "https://github.com/IBM-Swift/CCurl.git", Version(0, 2, 3)),
    .Package(url: "https://github.com/IBM-Swift/Kitura-TemplateEngine.git", Version(1, 7, 0)),
    .Package(url: "https://github.com/IBM-Swift/LoggerAPI.git", Version(1, 7, 0)),
    .Package(url: "https://github.com/IBM-Swift/BlueSocket.git", Version(0, 12, 42)),
    .Package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", Version(16, 0, 0)),
    .Package(url: "https://github.com/IBM-Swift/CLibpq.git", Version(0, 1, 1)),
    .Package(url: "https://github.com/IBM-Swift/Swift-Kuery.git", Version(0, 12, 4)),

    // depends on Perfect-libpq or Perfect-libpq-linux
    .Package(url: "https://github.com/PerfectlySoft/Perfect-PostgreSQL.git", Version(2, 0, 2)),

    // depends on Swift-Kuery and CLibpq
    .Package(url: "https://github.com/IBM-Swift/Swift-Kuery-PostgreSQL.git", Version(0, 11, 0)),

    // depends on LoggerAPI
    .Package(url: "https://github.com/IBM-Swift/HeliumLogger.git", Version(1, 7, 0)),

    // depends on BlueSocket, and OpenSSL (Linux-only)
    .Package(url: "https://github.com/IBM-Swift/BlueSSLService.git", Version(0, 12, 32)),

    // depends on LoggerAPI, BlueSocket, CCurl, BlueSSLService, and CEpoll (Linux-only)
    .Package(url: "https://github.com/IBM-Swift/Kitura-net.git", Version(1, 7, 0)),

    // depends on HeliumLogger, Kitura-net and SwiftyJSON
    .Package(url: "https://github.com/IBM-Swift/Kitura-CouchDB.git", Version(1, 7, 0)),

    // depends on Kitura-net, Kitura-TemplateEngine, and SwiftyJSON
    .Package(url: "https://github.com/IBM-Swift/Kitura.git", Version(1, 7, 0))
]

let package = Package(
    name: "Kitura-TechEmpower",
    dependencies: dependencies
)
