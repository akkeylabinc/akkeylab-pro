import Foundation
import Ignite

struct Home: StaticPage {
    var title = "AkkeyLab Pro"

    private struct CarouselItem {
        let imagePath: String
        let title: String
        let description: String
        let button: CarouselItemButton?
    }

    private struct CarouselItemButton {
        let title: String
        let link: String
    }

    private var carouselItems: [CarouselItem] {
        [
            .init(
                imagePath: "/images/speakers.jpg",
                title: "豊富な経験を持つ講師陣",
                description: "当スクールでは、数多くのプロダクト開発に携わり、技術カンファレンスで登壇経験のある講師が指導を行います。実践的なスキルを身につけるための、質の高い教育環境を提供します",
                button: nil
            ),
            .init(
                imagePath: "/images/vision-os.jpg",
                title: "visionOSにも対応可能なカリキュラム",
                description: "Apple Vision Pro専用OSであるvisionOS向けのアプリ開発を通じて、Swiftの魅力を学べるカリキュラムにも対応しています。最先端の技術に触れながら、次世代の開発スキルを身につけることが可能です", 
                button: .init(title: "開発実績", link: "https://prtimes.jp/main/html/rd/p/000000004.000120662.html")
            ),
            .init(
                imagePath: "/images/tv.jpg",
                title: "メディアでの注目",
                description: "当スクールの代表・板谷は、TOKYO MXにて放送されている「HISTORY」に出演し、スクールへの熱い情熱とプログラミング教育へのこだわりを紹介しました。注目のプログラミング教育を体感してみませんか？",
                button: .init(title: "プレスリリース", link: "https://prtimes.jp/main/html/rd/p/000000001.000120662.html")
            ),
        ]
    }

    func body(context: PublishingContext) -> [BlockElement] {
        Spacer(size: 56)

        Text("Online Programming School")
            .font(.title4)
            .foregroundStyle(.dimGray)
            .padding(.top, .extraLarge)
            .horizontalAlignment(.center)

        Carousel {
            for item in carouselItems {
                Slide(background: item.imagePath) {
                    Text(item.title)
                        .font(.title2)
                    Text(item.description)
                        .font(.lead)
                    if let button = item.button {
                        Text {
                            Link(button.title, target: button.link)
                                .linkStyle(.button)
                        }
                    }
                }.backgroundOpacity(0.2)
            }
        }
        .padding(.top, .large)

        Section {
            Card {
                Text {
                    Badge("Swift")
                        .badgeStyle(.subtleBordered)
                        .role(.primary)
                }.font(.title5)
            } header: {
                "Programming Language"
            }
            .margin(.bottom, .small)

            Card {
                Section {
                    for name in ["iOS", "iPadOS", "visionOS", "macOS"] {
                        Text {
                            Badge(name)
                                .badgeStyle(.subtleBordered)
                                .role(.primary)
                        }.font(.title4)
                    }
                }
            } header: {
                "Operating System"
            }
        }
        .columns(2)
        .padding(.vertical, .extraLarge)
        .padding(.horizontal, .small)
    }
}
