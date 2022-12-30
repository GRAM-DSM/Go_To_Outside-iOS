//
//  SignUpView.swift
//  GoToOutside
//
//  Created by 홍승재 on 2022/12/06.
//

import SwiftUI

struct SelectView: View {
    @State private var goToStudentSignupView = false
    @State private var goToTeacherSignupView = false
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
                    ImageButtonView(
                        title: "학생",
                        font: .custom("NotoSansKR-Medium", size: 18),
                        backgroundColor: Color.gray1,
                        image: Image("Student"),
                        action: { goToStudentSignupView.toggle() }
                    )
                    Spacer()
                    ImageButtonView(
                        title: "교사",
                        font: .custom("NotoSansKR-Medium", size: 18),
                        backgroundColor: Color.gray1,
                        image: Image("Teacher"),
                        action: { goToTeacherSignupView.toggle() }
                    )
                    Spacer()
                }
                Spacer()
            }
        }
        .padding(.horizontal, 16)
        .navigationBarHidden(true)
        .fullScreenCover(isPresented: $goToStudentSignupView, content: {
            StudentSignUpView()
        })
        .fullScreenCover(isPresented: $goToTeacherSignupView, content: {
            TeacherSignUpView()
        })
    }
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView()
    }
}
