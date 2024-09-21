import Foundation
import Ignite

struct Home: StaticPage {
    var title = "AkkeyLab Pro"

    func body(context: PublishingContext) -> [BlockElement] {
        Text(title)
            .font(.title1)
    }
}
