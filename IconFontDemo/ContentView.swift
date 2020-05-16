//
//  ContentView.swift
//  IconFontDemo
//
//  Created by Ajay Singh Mehra on 16/05/20.
//  Copyright © 2020 Ajay Singh Mehra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView(iconFont: .apple, color: .green)) {
                    IMButton(cornerRadius: 6, title: "Login with Apple", foregroundColor: .yellow, indicatorColor: .red, iconFont: .apple, iconColor: .white)
                        .frame(width: 300, height: 50, alignment: .leading)
                }

                NavigationLink(destination: DetailView(iconFont: .Netflix, color: .red)) {
                    IMButton(cornerRadius: 6, title: "Login with Netflix", foregroundColor: .yellow, indicatorColor: .red, iconFont: .Netflix, iconColor: .green)
                        .frame(width: 300, height: 50, alignment: .leading)
                }
                NavigationLink(destination: DetailView(iconFont: .twitter, color: .blue)) {
                    IMButton(cornerRadius: 6, title: "Login with Twitter", foregroundColor: .yellow, indicatorColor: .red, iconFont: .twitter, iconColor: .blue)
                        .frame(width: 300, height: 50, alignment: .leading)
                        .navigationBarTitle(Text("Logins"))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
