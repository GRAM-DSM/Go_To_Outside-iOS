import SwiftUI

struct TimePickerView: View {
    @Binding var hour: Int
    @Binding var minute: Int
    var body: some View {
        HStack(alignment: .center) {
            VStack {
                Text("시간")
                    .foregroundColor(.gray2)
                    .font(.custom("NotoSansKR-Bold", size: 14))
                Picker("select hour", selection: $hour) {
                    ForEach(1..<25) {
                        Text("\($0 < 10 ? "0" : "")\($0)")
                            .font(.custom("NotoSansKR-Bold", size: 30))
                    }
                }
                .labelsHidden()
                .frame(width: 130, height: 100)
                .pickerStyle(.wheel)
                .clipped()
            }
            Text(":")
                .font(.custom("NotoSansKR-Bold", size: 27))
                .padding(.top, 25)
            VStack {
                Text("분")
                    .foregroundColor(.gray2)
                    .font(.custom("NotoSansKR-Bold", size: 14))
                Picker("select hour", selection: $minute) {
                    ForEach(0..<60) {
                        Text("\($0 < 10 ? "0" : "")\($0)")
                            .font(.custom("NotoSansKR-Bold", size: 30))
                    }
                }
                .labelsHidden()
                .frame(width: 130, height: 100)
                .pickerStyle(.wheel)
                .clipped()
            }
        }
    }
}

struct TimePickerView_Previews: PreviewProvider {
    static var previews: some View {
        TimePickerView(hour: .constant(10), minute: .constant(11))
    }
}
