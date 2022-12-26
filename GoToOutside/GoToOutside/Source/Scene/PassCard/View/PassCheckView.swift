import SwiftUI

struct PassCheckView: View {
    @StateObject var passCardViewModel = PassCardViweModel()
    var body: some View {
        GeometryReader { proxy in
            if let passCardData = passCardViewModel.cardDatas {
                PassCardView(cardData: passCardData)
                .padding(.horizontal, proxy.size.width / 10)
                .padding(.vertical, proxy.size.height / 6)
            } else {
                Button {
                    print("외출증 뷰 넘어가기")
                } label: {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.gray1)
                        .overlay(
                            VStack {
                                Text("등록된 외출증이 없습니다.")
                                    .foregroundColor(.gray2)
                                    .font(.custom("NotoSansKR-Regular", size: 20))
                                Text("외출증 추가하기")
                                    .foregroundColor(.gray2)
                                    .font(.custom("NotoSansKR-Regular", size: 20))
                            }
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(style: StrokeStyle(lineWidth: 2))
                                .foregroundColor(.black)
                        )
                        .padding(.horizontal, proxy.size.width / 10)
                        .padding(.vertical, proxy.size.height / 6)
                }
            }
        }
    }
}

struct PassCheckView_Previews: PreviewProvider {
    static var previews: some View {
        PassCheckView()
    }
}
