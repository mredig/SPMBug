import XCTest
@testable import SPMBug

final class SPMBugTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SPMBug().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
