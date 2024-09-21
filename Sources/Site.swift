import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "AkkeyLab Pro"
    var titleSuffix = " – Online Programming School"
    var url = URL("https://akkeylab.pro")
    var builtInIconsEnabled = true

    var author = "AkkeyLab"

    var homePage = Home()
    var theme = MainTheme()
}
