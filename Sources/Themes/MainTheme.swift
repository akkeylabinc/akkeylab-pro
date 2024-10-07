import Foundation
import Ignite

struct MainTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context) {
                MetaTag(name: "og:image", content: URL("https://akkeylab.ltd/images/ogp.png"))
            }

            Body {
                MainHeader()
                page.body
                MainFooter()
            }
        }
    }
}
