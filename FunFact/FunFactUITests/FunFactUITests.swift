import XCTest

final class FunFactsAppUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    func test_facts() {
        verifyFact(forButton: "Fact 1", expectedText: "Sharks existed before trees")

        verifyFact(forButton: "Fact 2", expectedText: "A chicken once lived for 18 months without a head!")

        verifyFact(forButton: "Fact 3", expectedText: "A snail can sleep for three years")
        
        verifyFact(forButton: "About", expectedText: "About This App")
    }

    private func verifyFact(forButton buttonTitle: String, expectedText: String) {
        let button = app.buttons[buttonTitle]
        XCTAssertTrue(button.exists, "Button \(buttonTitle) does not exist")
        button.tap()
        
        let factLabel = app.staticTexts[expectedText]
        XCTAssertTrue(factLabel.exists, "Expected text '\(expectedText)' not found after tapping \(buttonTitle)")
    }
}

