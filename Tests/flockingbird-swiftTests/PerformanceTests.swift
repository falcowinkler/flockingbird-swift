import XCTest
@testable import Flockingbird

final class PerformanceTests: XCTestCase {
    func testFlockSimulationInitialization() {
        let flock = Flock(numberOfBoids: 1000, maxX: 1024, maxY: 600, maxZ: 600)
        let simulationParameters = FlockSimulationParameters()
        let flockSimulation = FlockSimulation(flock: flock, simulationParameters: simulationParameters)
        let metrics: [XCTMetric] = [XCTClockMetric()]

        let measureOptions = XCTMeasureOptions.default
        measureOptions.iterationCount = 100

        measure(metrics: metrics, options: measureOptions) {
            flockSimulation.step()
            _ = flockSimulation.currentFlock
        }
        print("done")
    }
}
