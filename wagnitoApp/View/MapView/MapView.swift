//
//  MapView.swift
//  wagnitoApp
//
//  Created by Mert Şahin on 10.06.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue.opacity(0.8)]), startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack{
                Map(coordinateRegion: $region).frame(width: (UIScreen.main.bounds.width),height: (UIScreen.main.bounds.height)).edgesIgnoringSafeArea(.all).zIndex(0)
                
                Spacer()

            }
            
            CustomTabBar().zIndex(1).position(.init(x: (UIScreen.main.bounds.width/2), y: (UIScreen.main.bounds.height*0.94))).foregroundColor(.black)
                
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
