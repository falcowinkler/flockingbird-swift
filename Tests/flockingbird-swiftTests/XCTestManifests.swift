import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(flockingbird_swiftTests.allTests),
    ]
}
#endif
