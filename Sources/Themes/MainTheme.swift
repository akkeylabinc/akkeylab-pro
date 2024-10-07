import Foundation
import Ignite

struct MainTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)

            Body {
                MainHeader()
                page.body
                MainFooter()
            }
        }
    }
}
