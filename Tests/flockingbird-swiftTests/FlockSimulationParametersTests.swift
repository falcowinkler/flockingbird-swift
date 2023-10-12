import XCTest
@testable import Flockingbird

final class FlockSimulationParametersTests: XCTestCase {
    func testInitWithDict() {
        let flockSimulationParameters = FlockSimulationParameters(fromDict: ["speedLimit": -1, "maxX": 100, "maxY": 200])
        XCTAssertEqual(flockSimulationParameters.speedLimit, -1)
        XCTAssertEqual(flockSimulationParameters.maxX, 100)
        XCTAssertEqual(flockSimulationParameters.maxY, 200)
        XCTAssertEqual(flockSimulationParameters.forceLimit, 0.03)
    }
    
    func testDefaultInit() {
        let flockSimulationParameters = FlockSimulationParameters()
        XCTAssertEqual(flockSimulationParameters.forceLimit, 0.03)
    }
    
    func testInitWithAllValues() {
        let flockingSimulationParameters =
        FlockSimulationParameters(
            speedLimit: 1,
            forceLimit: 2,
            positionIncrementScalingFactor: 3,
            avoidanceRadius: 4,
            visionRange: 5,
            separationWeight: 6,
            alignmentWeight: 7,
            cohesionWeight: 8,
            avoidanceWeight: 1,
            directionWeight: 1,
            isTwoD: true,
            maxX: 9,
            maxY: 10,
            maxZ: 11,
            targetPosition: nil
        )
        XCTAssertEqual(flockingSimulationParameters.speedLimit, 1)
        XCTAssertEqual(flockingSimulationParameters.forceLimit, 2)
        XCTAssertEqual(flockingSimulationParameters.positionIncrementScalingFactor, 3)
        XCTAssertEqual(flockingSimulationParameters.avoidanceRadius, 4)
        XCTAssertEqual(flockingSimulationParameters.visionRange, 5)
        XCTAssertEqual(flockingSimulationParameters.separationWeight, 6)
        XCTAssertEqual(flockingSimulationParameters.alignmentWeight, 7)
        XCTAssertEqual(flockingSimulationParameters.cohesionWeight, 8)
        XCTAssertEqual(flockingSimulationParameters.maxX, 9)
        XCTAssertEqual(flockingSimulationParameters.maxY, 10)
    }
}
