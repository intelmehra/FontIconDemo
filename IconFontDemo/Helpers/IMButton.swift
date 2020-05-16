//
//  IMButton.swift
//  SwiftUIDemo
//
//  Created by Ajay Singh Mehra on 19/04/20.
//  Copyright © 2020 Ajay Singh Mehra. All rights reserved.
//

import SwiftUI

struct IMButton: View {
    let cornerRadius: Double
    let title: String
    let foregroundColor: Color
    let indicatorColor: Color
    let iconFont: FontIcon
    let iconColor: Color
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: .some(300), height: 50)
                .foregroundColor(foregroundColor)
            LeftCorner(cornerRadius: cornerRadius)
                .trim(from: 0.39, to: 0.61)
                .fill(indicatorColor)
                .frame(width: .some(300), height: 50)
            HStack {
                Text(iconFont.rawValue)
                    .padding(.leading, 15)
                    .font(.custom("iconfont", size: 30))
                    .foregroundColor(iconColor)
                Text(title).bold()
                    .padding(.leading, 20)
            }
        }
    }
}

struct IMButton_Previews: PreviewProvider {
    static var previews: some View {
        IMButton(cornerRadius: 5, title: "Hello", foregroundColor: .red, indicatorColor: .green, iconFont: .apple, iconColor: .blue)
    }
}

struct LeftCorner: Shape {
    let cornerRadius: Double
    func path(in rect: CGRect) -> Path {
        return .init(roundedRect: rect, cornerSize: .init(width: cornerRadius, height: cornerRadius))
    }
}
