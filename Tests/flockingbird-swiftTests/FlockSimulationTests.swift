import XCTest
@testable import Flockingbird

final class FlockSimulationTests: XCTestCase {
    func testFlockSimulationInitialization() {
        let flock = Flock(numberOfBoids: 100, maxX: 1024, maxY: 600, maxZ: 0)
        let simulationParameters = FlockSimulationParameters(fromDict: ["maxX": 1024, "maxY": 600, "maxZ": 0])
        let flockSimulation = FlockSimulation(flock: flock, simulationParameters: simulationParameters)
        for boid in flockSimulation.currentFlock.boids {
            XCTAssertTrue(flock.boids.contains { $0.position.x == boid.position.x })
            XCTAssertTrue(flock.boids.contains { $0.position.y == boid.position.y })
            XCTAssertTrue(flock.boids.contains { $0.velocity.x == boid.velocity.x })
            XCTAssertTrue(flock.boids.contains { $0.position.y == boid.position.y })
        }

        flockSimulation.step()

        XCTAssertEqual(flockSimulation.currentFlock.boids.count, 100)
    }
}
