import Foundation
import Ignite

struct MainFooter: Component {
    func body(context: PublishingContext) -> [any PageElement] {
        Text("This site was built using the Swift language")
            .horizontalAlignment(.center)
            .foregroundStyle(.darkGray)
            .background(.white)
            .margin(.top, .extraLarge)
            .margin(.bottom, .large)
    }
}
