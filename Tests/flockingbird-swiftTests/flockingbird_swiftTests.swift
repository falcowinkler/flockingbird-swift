import XCTest
@testable import Flockingbird

final class flockingbird_swiftTests: XCTestCase {
    func testDefaultInitializer() {
        XCTAssertEqual(FlockSimulation().currentFlock.boids, Set<Boid>())
    }
    func testRandomNumberOfBoidsInitializer() {
    }
}
