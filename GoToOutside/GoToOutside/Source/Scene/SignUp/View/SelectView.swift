//
//  SignUpView.swift
//  GoToOutside
//
//  Created by 홍승재 on 2022/12/06.
//

import SwiftUI

struct SelectView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 113)
                Text("회원가입")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Light", size: 40))
                Text("누구신가요?")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Bold", size: 40))
                    .padding(.bottom, 71)
                HStack {
                    Spacer()
                    NavigationLink(destination: EmptyView()) {
                        VStack(spacing: 0) {
                            Image("Student")
                            Text("학생")
                                .foregroundColor(.black)
                                .font(.custom("NotoSansKR-Medium", size: 18))
                        }
                        .frame(width: 150, height: 150)
                        .background(Color.signUpSelector)
                        .cornerRadius(10)
                        .padding(1)
                        .background(Color.gray1)
                        .cornerRadius(10)
                        .padding(10)
                    }
                    Spacer()
                    NavigationLink(destination: SignUpView()) {
                        VStack(spacing: 0) {
                            Image("Teacher")
                            Text("학생")
                                .foregroundColor(.black)
                                .font(.custom("NotoSansKR-Medium", size: 18))
                        }
                        .frame(width: 150, height: 150)
                        .background(Color.signUpSelector)
                        .cornerRadius(10)
                        .padding(1)
                        .background(Color.gray1)
                        .cornerRadius(10)
                        .padding(10)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
        .padding(.horizontal, 16)
        .navigationBarHidden(true)
    }
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView()
    }
}
