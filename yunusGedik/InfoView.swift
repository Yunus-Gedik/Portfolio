//
//  InfoView.swift
//  sui
//
//  Created by Yunus Gedik on 15.04.2022.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let systemIcon: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: systemIcon)
                        .foregroundColor(.green)
                    Text(text)
                        .foregroundColor(Color("TextColor"))
                })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+90 507 147 57 43", systemIcon: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
