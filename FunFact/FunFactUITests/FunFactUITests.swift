import XCTest

final class FunFactsAppUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        continueAfterFailure = true
        app.launch()
    }

    func test_facts() {
        let expected1 = localizedString(forKey: "fact_1_text")
        verifyFact(forButton: "fact1_button", expectedText: expected1)
        
        let expected2 = localizedString(forKey: "fact_2_text")
        verifyFact(forButton: "fact2_button", expectedText: expected2)
        
        let expected3 = localizedString(forKey: "fact_3_text")
        verifyFact(forButton: "fact3_button", expectedText: expected3)
        
//        let expected = localizedString(forKey: "About_text")
//        verifyFact(forButton: "About_button", expectedText: expected)
    }

    private func verifyFact(forButton accessibilityIdentifier: String, expectedText: String) {
        let button = app.buttons[accessibilityIdentifier]
        XCTAssertTrue(button.exists, "Button with a11y-id '\(accessibilityIdentifier)' does not exist")

        button.tap()
        
        let factLabel = app.staticTexts[expectedText]
        XCTAssertTrue(factLabel.exists, "Expected text '\(expectedText)' not found after tapping \(accessibilityIdentifier)")
    }
}

extension XCTestCase {
    func localizedString(forKey key: String) -> String {
        let testBundle = Bundle(for: type(of: self))
        return NSLocalizedString(key, bundle: testBundle, comment: "")
    }
}
