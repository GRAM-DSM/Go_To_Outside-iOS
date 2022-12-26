import SwiftUI

struct TextEditorView: View {
    @Binding var text: String
    var placeholder: String
    var indicator: String
    var body: some View {
        VStack(alignment: .leading) {
            TextEditor(text: $text)
                .background(Color.white)
                .font(.custom("NotoSansKR-Light", size: 18))
                .frame(height: 150)
                .overlay(
                    VStack {
                        HStack {
                            if text.isEmpty {
                                Text(placeholder)
                                    .autocorrectionDisabled(true)
                                    .autocapitalization(.none)
                                    .foregroundColor(.gray2)
                                    .font(.custom("NotoSansKR-Light", size: 18))
                                    .padding(.top, 8)
                                    .padding(.leading, 5)
                            }
                            Spacer()
                        }
                        Spacer()
                    }
                )
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

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView(
            text: .constant(""),
            placeholder: "외출 사유",
            indicator: "옳바르지 않은 외출사유는 거절당할 수 있습니다."
        )
    }
}
