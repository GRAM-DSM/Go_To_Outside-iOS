import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("로그인")
                        .font(.system(size: 30))
                    Spacer()
                }
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
