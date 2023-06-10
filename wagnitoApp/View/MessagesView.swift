//
//  MessagesView.swift
//  wagnitoApp
//
//  Created by Mert Şahin on 10.06.2023.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue.opacity(0.8)]), startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}

