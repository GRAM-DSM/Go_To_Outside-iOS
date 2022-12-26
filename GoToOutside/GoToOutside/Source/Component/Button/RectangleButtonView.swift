import SwiftUI

struct RectangleButtonView: View {
    var title: String
    var font: Font
    var backgroundColor: Color
    var titleColor: Color
    var action: () -> Void
    init(
        title: String,
        font: Font,
        backgroundColor: Color = .black,
        titleColor: Color = .white,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.font = font
        self.backgroundColor = backgroundColor
        self.titleColor = titleColor
        self.action = action
    }
    var body: some View {
        Button(action: action) {
            VStack(spacing: 0) {
                Rectangle()
                    .frame(height: 0)
                Text(title)
                    .font(font)
                    .foregroundColor(titleColor)
                    .padding(.vertical, 13)
            }
            .background(backgroundColor)
            .cornerRadius(12)
        }
    }
}

struct RectangleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleButtonView(
            title: "회원가입",
            font: .custom("NotoSansKR-Bold", size: 20),
            action: { }
        )
    }
}
