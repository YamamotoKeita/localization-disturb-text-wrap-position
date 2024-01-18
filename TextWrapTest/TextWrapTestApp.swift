import SwiftUI

@main
struct TextWrapTestApp: App {
    var body: some Scene {
        WindowGroup {
            Text("報酬が届かない等ございましたらお問い合わせください。")
                .font(Font.custom("HiraginoSans-W3", size: 17))
        }
    }
}
