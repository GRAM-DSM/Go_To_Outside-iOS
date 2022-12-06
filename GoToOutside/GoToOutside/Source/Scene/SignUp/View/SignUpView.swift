//
//  SignUpView.swift
//  GoToOutside
//
//  Created by 홍승재 on 2022/12/06.
//

import SwiftUI

struct SignUpView: View {
    @State private var id = ""
    @State private var name = ""
    @State private var number = ""
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 113)
                Text("회원가입")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Light", size: 40))
                Text("어떻게 부를까요?")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Bold", size: 40))
                    .padding(.bottom, 71)
                Group {
                    TextField("아이디", text: $id)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .foregroundColor(.black)
                        .font(.custom("NotoSansKR-Light", size: 18))
                        .padding(.bottom, 7)
                    Rectangle()
                        .frame(height: 2)
                        .padding(.bottom, 9)
                    Text("기억하기 쉬운 아이디로 정해주세요 :)")
                        .foregroundColor(.gray1)
                        .font(.custom("NotoSansKR-Light", size: 11))
                        .padding(.bottom, 17)
                    TextField("이름", text: $name)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .foregroundColor(.black)
                        .font(.custom("NotoSansKR-Light", size: 18))
                        .padding(.bottom, 7)
                    Rectangle()
                        .frame(height: 2)
                        .padding(.bottom, 9)
                    Text("본인의 이름으로 작성해 주세요!")
                        .foregroundColor(.gray1)
                        .font(.custom("NotoSansKR-Light", size: 11))
                        .padding(.bottom, 17)
                    TextField("아이디", text: $number)
                        .keyboardType(.numberPad)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .foregroundColor(.black)
                        .font(.custom("NotoSansKR-Light", size: 18))
                        .padding(.bottom, 7)
                    Rectangle()
                        .frame(height: 2)
                        .padding(.bottom, 9)
                    Text("학교 학번 4자리로 입력해주세요!")
                        .foregroundColor(.gray1)
                        .font(.custom("NotoSansKR-Light", size: 11))
                        .padding(.bottom, 17)
                }
                Spacer()
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Spacer()
                        Text("계속하기")
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

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
