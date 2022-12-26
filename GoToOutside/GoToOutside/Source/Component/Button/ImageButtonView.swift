//
//  ImageButtonView.swift
//  GoToOutside
//
//  Created by 조병진 on 2022/12/24.
//

import SwiftUI

struct ImageButtonView: View {
    var title: String
    var font: Font
    var backgroundColor: Color
    var titleColor: Color
    var image: Image
    var action: () -> Void
    init(
        title: String,
        font: Font,
        backgroundColor: Color,
        titleColor: Color = .black,
        image: Image,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.font = font
        self.backgroundColor = backgroundColor
        self.titleColor = titleColor
        self.image = image
        self.action = action
    }
    var body: some View {
        Button(action: action) {
            VStack {
                image
                    .resizable()
                    .frame(width: 89, height: 89)
                    .foregroundColor(titleColor)
                Text(title)
                    .font(font)
                    .foregroundColor(titleColor)
            }
            .frame(width: 150, height: 150)
            .background(backgroundColor)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(style: StrokeStyle(lineWidth: 1))
                    .foregroundColor(.gray2)
            )
        }
    }
}

struct ImageButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ImageButtonView(
            title: "책",
            font: .custom("NotoSansKR-Medium", size: 18),
            backgroundColor: Color.gray1,
            titleColor: .black,
            image: Image(systemName: "book"),
            action: { }
        )
    }
}
