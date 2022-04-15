//
//  ContentView.swift
//
//  Created by Yunus Gedik on 14.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red:0.09, green:0.63, blue:0.52).edgesIgnoringSafeArea(.all)
            VStack {
                Image("yunus")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke( Color("ReverseTextColor"), lineWidth: 5))
                Text("Yunus Gedik")
                    .font(.custom("MySoul-Regular", size: 40))
                    .foregroundColor(Color("ReverseTextColor"))
                    .multilineTextAlignment(.center)
                    .lineLimit(0)
                Text("IOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(Color("ReverseTextColor"))
                Divider()
                InfoView(text: "+90 507 147 57 43", systemIcon: "phone.fill")
                InfoView(text: "yunus-gedik@outlook.com", systemIcon: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(stringLiteral: "iPhone 13"))
            .previewInterfaceOrientation(.portrait)
    }
}
