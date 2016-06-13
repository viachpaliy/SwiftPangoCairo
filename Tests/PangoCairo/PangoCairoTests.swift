import XCTest
import CCairo
import Cairo
import Pango
@testable import PangoCairo

class PangoCairoTests: XCTestCase {

    func testPangoCairoContext() {
        let w = CInt(320)
        let h = CInt(240)
        let surface = Surface(cairo_image_surface_create(CAIRO_FORMAT_ARGB32, w, h))
        guard let cp = cairo_create(surface.ptr) else { XCTFail() ; return }
        let cairo_context = cairo.Context(cp)
        guard let ptr = create_context(cr: cairo_context) else { XCTFail() ; return }
        let context = Pango.Context(ptr)
        XCTAssertNotNil(context.fontMap)
        XCTAssertNotNil(context.fontDescription)
        XCTAssertNotNil(context.gravityHint)
        XCTAssertNotNil(context.matrix)
        let serial = context.serial
        context.changed()
        XCTAssertEqual(context.serial, serial + 1)
    }

}
extension PangoCairoTests {
    static var allTests : [(String, (PangoCairoTests) -> () throws -> Void)] {
        return [
            ("testPangoCairoContext", testPangoCairoContext),
        ]
    }
}
