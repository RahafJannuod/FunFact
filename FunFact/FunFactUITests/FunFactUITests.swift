import XCTest

final class FunFactsAppUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    func test_facts() {
        verifyFact(forButton: "Fact 1", expectedText: "The largest piece of fossilised dinosaur poo discovered is over 30cm long and over two litres in volume!")

        verifyFact(forButton: "Fact 2", expectedText: "A chicken once lived for 18 months without a head!")

        verifyFact(forButton: "Fact 3", expectedText: "Animals can experience time differently from humans!")
        
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

