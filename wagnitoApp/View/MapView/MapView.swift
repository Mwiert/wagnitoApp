//
//  MapView.swift
//  wagnitoApp
//
//  Created by Mert Şahin on 10.06.2023.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue.opacity(0.8)]), startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Wagnito").font(.custom(FontsManager.YellowTail.Regular, size: 50)).foregroundColor(.white).padding(.top, 10)
                
                Spacer()
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
