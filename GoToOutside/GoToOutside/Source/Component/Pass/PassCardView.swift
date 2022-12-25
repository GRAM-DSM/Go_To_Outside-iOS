import SwiftUI
import Foundation

struct Cardstate {
    static func cardBackground(state: String) -> Color {
        switch state {
        case "PERMIT": return .green1
        case "UNPERMIT": return .red1
        case "WAITING": return .gray1
        default:
            return .white
        }
    }
    static func circleColor(state: String) -> Color {
        switch state {
        case "PERMIT": return .green2
        case "UNPERMIT": return .red2
        case "WAITING": return .gray2
        default:
            return .white
        }
    }
    static func cardImage(state: String) -> String {
        switch state {
        case "PERMIT": return "white_check"
        case "UNPERMIT": return "cancel"
        case "WAITING": return "search"
        default:
            return ""
        }
    }
}

struct PassCardView: View {
    var cardData: PassCardLoaclModel
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Cardstate.cardBackground(state: cardData.permitStatus))
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(style: StrokeStyle(lineWidth: 2))
                )
            Group {
                VStack(alignment: .leading) {
                    HStack(alignment: .bottom) {
                        Text("외출증")
                            .font(.custom("NotoSansKR-Medium", size: 25))
                        Text("\(cardData.outingTime) ~ \(cardData.incomingTime)")
                            .font(.custom("NotoSansKR-Light", size: 15))
                        Spacer()
                    }
                    HStack(alignment: .bottom) {
                        Text(cardData.name)
                            .font(.custom("NotoSansKR-Black", size: 30))
                        Text(cardData.number)
                            .font(.custom("NotoSansKR-Light", size: 15))
                    }
                    Spacer()
                }
                .padding(21)
                VStack {
                    Circle()
                        .padding(.horizontal, 87)
                        .shadow(color: .gray, radius: 6, x: 2, y: 2)
                        .foregroundColor(Cardstate.circleColor(state: cardData.permitStatus))
                        .overlay(
                            Image(Cardstate.cardImage(state: cardData.permitStatus))
                                .foregroundColor(.white)
                        )
                        .padding(.bottom, 18)
                    Text(cardData.permitter)
                        .font(.custom("NotoSansKR-Bold", size: 15))
                }
            }
            GeometryReader { proxy in
                ZStack(alignment: .top) {
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(height: proxy.size.height / 4)
                        .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
                        .padding(.top, proxy.size.height - proxy.size.height / 4)
                    HStack {
                        VStack(alignment: .leading) {
                            Text("사유")
                                .foregroundColor(.gray2)
                                .font(.custom("NotoSansKR-Bold", size: 15))
                                .padding(.top, 9)
                                .padding(.horizontal, 9)
                            Text(cardData.resson)
                                .font(.custom("NotoSansKR-Medium", size: 15))
                                .padding(.horizontal, 9)
                        }
                        .padding(.top, proxy.size.height - proxy.size.height / 4)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct PassCardView_Previews: PreviewProvider {
    static var previews: some View {
        PassCardView(
            cardData: PassCardLoaclModel(
                name: "조병진",
                number: "1117",
                permitStatus: "WAITING",
                resson: "배가 아파요..",
                outingTime: "11:30",
                incomingTime: "12:50",
                permitter: "조병진이 수락함")
        )
    }
}
