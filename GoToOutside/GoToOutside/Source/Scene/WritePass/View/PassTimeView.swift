import SwiftUI

struct PassTimeView: View {
    @State var hour: Int = 0
    @State var minute: Int = 0
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 113)
                Text("외출증 작성")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Light", size: 40))
                Text("외출시간")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Bold", size: 40))
                    .padding(.bottom, 71)
                HStack {
                    Spacer()
                    TimePickerView(
                        hour: $hour,
                        minute: $minute
                    )
                    Spacer()
                }
                Spacer()
                RectangleButtonView(
                    title: "외출증 신청",
                    font: .custom("NotoSansKR-Bold", size: 20),
                    action: { }
                )
            }
        }
        .padding(.horizontal, 16)
        .navigationBarHidden(true)
    }
}

struct PassTimeView_Previews: PreviewProvider {
    static var previews: some View {
        PassTimeView()
    }
}
