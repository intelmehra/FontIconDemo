//
//  TwitterView.swift
//  IconFontDemo
//
//  Created by Ajay Singh Mehra on 16/05/20.
//  Copyright © 2020 Ajay Singh Mehra. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @State private var size: CGFloat = 10
    let iconFont:FontIcon
    let color:Color
    var body: some View {
        VStack(alignment: .center, spacing: 30){
            Text(iconFont.rawValue)
                .font(.custom("iconfont", size: size))
                .foregroundColor(color)
            Slider(value: $size, in: 10...300, step: 20)
                .padding(.leading, 20)
                .padding(.trailing, 20 )
           
        }
    }
}



struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(iconFont: .twitter, color: .blue)
    }
}
