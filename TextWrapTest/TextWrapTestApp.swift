import SwiftUI
import UIKit

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
