import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(flockingbird_swiftTests.allTests),
        testCase(FlockSimulationParametersTests.allTests),
        testCase(FlockSimulationTests.allTests),
        testCase(PerformanceTests.allTests)
    ]
}
#endif
