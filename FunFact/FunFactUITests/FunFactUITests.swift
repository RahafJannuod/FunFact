import XCTest

final class FunFactsAppUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    func test_fact1() {
        app.buttons["Fact 1"].tap()
        XCTAssert(app.staticTexts["The largest piece of fossilised dinosaur poo discovered is over 30cm long and over two litres in volume!"].exists, "the text is the not right one")
    }
    
    func test_fact2() {
        app.buttons["Fact 2"].tap()
        XCTAssert(app.staticTexts["A chicken once lived for 18 months without a head!"].exists, "the text is the not right one")
    }
    
    func test_fact3() {
        app.buttons["Fact 3"].tap()
        XCTAssert(app.staticTexts["Animals can experience time differently from humans!"].exists, "the text is the not right one")
    }
}

