import XCTest
@testable import Flockingbird

final class flockingbird_swiftTests: XCTestCase {
    func testDefaultInitializer() {
        XCTAssertEqual(Flockingbird().currentFlock.boids, Set<Boid>())
    }
    func testRandomNumberOfBoidsInitializer() {
        XCTAssertEqual(Flockingbird(numberOfBoids: 10).currentFlock.boids.count, 10)
    }
}
