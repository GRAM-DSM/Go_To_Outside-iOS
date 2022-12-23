import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    var placeholder: String = ""
    var font: Font
    var indicator: String
    var isSecurity: Bool
    @State var isView: Bool = false
    init(
        text: Binding<String>,
        placeholder: String,
        font: Font,
        indicator: String = "",
        isSecurity: Bool = false
    ) {
        self._text = text
        self.placeholder = placeholder
        self.font = font
        self.indicator = indicator
        self.isSecurity = isSecurity
    }
    var body: some View {
        VStack {
            HStack {
                if isSecurity && !isView {
                    SecureField(placeholder, text: $text)
                        .font(font)
                        .padding(.bottom, 4.5)
                } else {
                    TextField(placeholder, text: $text)
                        .font(font)
                        .padding(.bottom, 3)
                }
                if isSecurity {
                    Button {
                        isView.toggle()
                    } label: {
                        Image("eye_\(isView ? "close" : "open")")
                            .frame(width: 28, height: 28)
                    }
                }
            }
            Rectangle()
                .frame(height: 2)
            if !indicator.isEmpty {
                HStack {
                    Text(indicator)
                        .font(.custom("NotoSansKR-Medium", size: 11))
                        .foregroundColor(.gray2)
                    Spacer()
                }
            }
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(
            text: .constant("안녕하십니까"),
            placeholder: "아이디",
            font: .custom("NotoSansKR-Light", size: 18),
            indicator: "20글자 이상의 비밀번호로 입력해주세요 :)",
            isSecurity: true
        )
    }
}
