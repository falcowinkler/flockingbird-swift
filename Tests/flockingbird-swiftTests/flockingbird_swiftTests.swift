import XCTest
@testable import Flockingbird

final class flockingbird_swiftTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Flockingbird().currentFlock.boids, Set<Boid>())
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
