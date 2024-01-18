# SwiftUI Text wrappiong position is disturbed by default localisation.

If the "default localization" of an iOS project is set to "Japanese", SwiftUI Text breaks before the end of the line in some situations. This project is to compare the difference in wrapping position between the default localization in Japanise and English.

## How to set default localization

You can change the default localization from "Info" tab of a project file.

<img width="774" alt="screenshot2024-01-18 9 23 16" src="https://github.com/YamamotoKeita/localization-disturb-text-wrap-position/assets/3321047/4b4fbf98-4f42-4f41-a254-a86b5c0425e1">

## Difference between Japanese and English

| English  | Japanese |
| ------------- | ------------- |
| <img width=300 src=https://github.com/YamamotoKeita/localization-disturb-text-wrap-position/assets/3321047/46e186a0-9c56-44d5-b977-c64309fd1085 /> | <img width=300 src=https://github.com/YamamotoKeita/localization-disturb-text-wrap-position/assets/3321047/2ebc98f6-0cc1-4764-ac01-9c03c9400428 /> |

Environment: iPhone 15 Simulator (iOS 17.2)

## Code

```swift
@main
struct TextWrapTestApp: App {
    var body: some Scene {
        WindowGroup {
            Text("報酬が届かない等ございましたらお問い合わせください。")
                .font(Font.custom("HiraginoSans-W3", size: 17))
        }
    }
}
```
