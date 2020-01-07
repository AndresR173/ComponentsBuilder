import XCTest
@testable import ComponentsBuilder

final class ComponentsBuilderTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ComponentsBuilder().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
