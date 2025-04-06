import XCTest

final class FunFactsAppUITests: XCTestCase {
    let app = XCUIApplication()
    
    
    func test_fact1() {
        app.launch()
        app.buttons["Fact 1"].tap()
        assert(app.staticTexts["The largest piece of fossilised dinosaur poo discovered is over 30cm long and over two litres in volume!"].exists, "the text is the not right one")
    }
}

