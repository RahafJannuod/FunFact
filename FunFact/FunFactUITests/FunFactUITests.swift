import XCTest

final class FunFactsAppUITests: XCTestCase {
    let app = XCUIApplication()
    
    
    func test_fact1() {
        app.launch()
        app.buttons["Fact 1"].tap()
        assert(app.staticTexts["The largest piece of fossilised dinosaur poo discovered is over 30cm long and over two litres in volume!"].exists, "the text is the not right one")
    }
    func test_fact2() {
        app.launch()
        app.buttons["Fact 2"].tap()
        assert(app.staticTexts["A chicken once lived for 18 months without a head!"].exists, "the text is the not right one")
    }
    
}

