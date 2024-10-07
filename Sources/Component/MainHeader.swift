import Foundation
import Ignite

struct MainHeader: Component {
    func body(context: PublishingContext) -> [any PageElement] {
        NavigationBar(logo: "AkkeyLab Pro") {
            Link("お問い合わせ", target: "https://x.com/AkkeyLab")
            Link("運営会社", target: "https://akkeylab.ltd")
            Link("プライバシーポリシー", target: PrivacyPolicy())
        }
        .background(Color(hex: "#286AA3"))
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .position(.fixedTop)
        .margin(.bottom, .extraLarge)
    }
}
