import SwiftUI

struct PassReasonView: View {
    @State private var text: String = ""
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 113)
                Text("외출증 작성")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Light", size: 40))
                Text("외출사유")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Bold", size: 40))
                    .padding(.bottom, 71)
                TextEditorView(
                    text: $text,
                    placeholder: "사유작성",
                    indicator: "옳바르지 않은 외출사유는 거절당할 수 있습니다."
                )
                Spacer()
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Spacer()
                        Text("다음")
                            .foregroundColor(.white)
                            .font(.custom("NotoSansKR-Bold", size: 20))
                            .padding(.vertical, 14)
                        Spacer()
                    }
                    .background(.black)
                    .cornerRadius(12)
                }
                .padding(.bottom, 10)
            }
        }
        .padding(.horizontal, 16)
        .navigationBarHidden(true)
    }
}

struct PassReasonView_Previews: PreviewProvider {
    static var previews: some View {
        PassReasonView()
    }
}
