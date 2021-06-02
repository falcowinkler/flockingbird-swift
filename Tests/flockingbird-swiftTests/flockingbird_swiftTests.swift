import XCTest
@testable import Flockingbird

final class flockingbird_swiftTests: XCTestCase {
    func testDefaultInitializer() {
        XCTAssertEqual(FlockSimulation().currentFlock.boids, Set<Boid>())
    }
    func testRandomNumberOfBoidsInitializer() {
        XCTAssertEqual(FlockSimulation(numberOfBoids: 10, maxX: 1024, maxY: 600).currentFlock.boids.count, 10)
    }
}
