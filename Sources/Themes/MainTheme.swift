import Foundation
import Ignite

struct BaseTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)

            Body {
                page.body

                IgniteFooter()
            }
        }
    }
}
