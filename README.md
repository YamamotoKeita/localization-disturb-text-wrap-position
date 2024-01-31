# SwiftUI Text wrappiong position is disturbed by default localization.

When the "default localization" of an iOS project is set to "Japanese", SwiftUI Text breaks before the end of the line in some situations. This project is to compare the difference in wrapping position between the default localization in Japanise and English.

## Points
- When I change the "default localization" from English to Japanese, a Text wraps at wrong position.
- When I use `Text.init(verbatim: String)`, the wrapping position is changed. This happens in both English and Japanese, but it depends on the device, font and text content.

## How to set default localization

You can change the default localization from "Info" tab of a project file.

<img width="774" alt="screenshot2024-01-18 9 23 16" src="https://github.com/YamamotoKeita/localization-disturb-text-wrap-position/assets/3321047/4b4fbf98-4f42-4f41-a254-a86b5c0425e1">

## Difference between Japanese and English

| English  | Japanese |
| ------------- | ------------- |
| <img width=300 src=https://github.com/YamamotoKeita/localization-disturb-text-wrap-position/assets/3321047/da553d32-c0ba-44e3-929d-0b3cf71fc0eb /> | <img width=300 src=https://github.com/YamamotoKeita/localization-disturb-text-wrap-position/assets/3321047/00231c79-dae9-4fc7-b6da-bfb9eba84f68 /> |

Environment: iPhone 15 Simulator (iOS 17.2)

## Code

```swift
@main
struct TextWrapTestApp: App {
    @State var fontNames: [String] = []

    var body: some Scene {
        WindowGroup {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(fontNames, id: \.self) { fontName in
                        VStack(alignment: .leading) {
                            Text(fontName)
                                .padding(.vertical, 6)
                                .frame(maxWidth: .infinity)
                                .background(Color.black.opacity(0.2))

                            Text("報酬が届かない等ございましたらお問い合わせください。")
                                .font(Font.custom(fontName, size: 17))
                            Text(verbatim: "報酬が届かない等ございましたらお問い合わせください。")
                                .font(Font.custom(fontName, size: 17))
                        }
                    }
                }
            }
            .onAppear {
                fontNames = UIFont.familyNames.flatMap { family in
                    UIFont.fontNames(forFamilyName: family)
                }
            }
        }
    }
}
```
