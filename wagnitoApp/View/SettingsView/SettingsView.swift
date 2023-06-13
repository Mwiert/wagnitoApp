//
//  SettingsView.swift
//  wagnitoApp
//
//  Created by Mert Şahin on 10.06.2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var logout = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue.opacity(0.8)]), startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Wagnito").font(.custom(FontsManager.YellowTail.Regular, size: 50)).foregroundColor(.white).padding(.top, 10)
                Divider().background(.white)
                
                HStack{
                    HStack(){
                        HStack(spacing : 15){
                            Button(action : {
                                
                            }){
                                Spacer()
                                Image(systemName: "person").foregroundColor(.black)
                            }.padding(.vertical,20)
                            Spacer()
                            }
                     
                        Spacer()
                    }
                    .padding(.vertical)
                    .padding(.horizontal, 20)
                    .background(.white)
                    .cornerRadius(100)
                    .frame(width: (UIScreen.main.bounds.width)/3)
                    .padding(.leading,20)
                    .shadow(radius: 15)
                    
                    Spacer()
                    
                    HStack{
                        HStack(spacing : 15){
                            Image(systemName: "person").foregroundColor(.black)
                        }.padding(.vertical,20)
                        Spacer()
                        Text("Kişi Adı, Hoşgeldin.")
                    }
                    .padding(.vertical)
                    .padding(.horizontal, 20)
                    .background(.white)
                    .cornerRadius(10)
                    .frame(width: (UIScreen.main.bounds.width)/2)
                    .padding(.trailing,20)
                }.padding(5)
                    .shadow(radius: 10)
                HStack{
                    HStack(spacing : 15){
                        Image(systemName: "person").foregroundColor(.black)
                    }.padding(.vertical,20)
                    Spacer()
                    Text("Kişisel Bilgiler")
                }
                .padding(.top,10)
                .padding(.vertical)
                .padding(.horizontal, 20)
                .background(.white)
                .cornerRadius(10)
                .padding(.leading, 20)
                .frame(width: (UIScreen.main.bounds.width))
                .padding(.trailing,20)
                .shadow(radius: 10)
                
                HStack{
                    HStack(spacing : 15){
                        Image(systemName: "person").foregroundColor(.black)
                    }.padding(.vertical,20)
                    Spacer()
                    Text("İletişim bilgileri")
                }
                .padding(.vertical)
                .padding(.horizontal, 20)
                .background(.white)
                .cornerRadius(10)
                .padding(.leading, 20)
                .frame(width: (UIScreen.main.bounds.width))
                .padding(.trailing,20)
                .shadow(radius: 10)
                
                HStack{
                    HStack(spacing : 15){
                        Image(systemName: "person").foregroundColor(.black)
                    }.padding(.vertical,20)
                    Spacer()
                    Text("Bağlı kişiyi yönet")
                }
                .padding(.vertical)
                .padding(.horizontal, 20)
                .background(.white)
                .cornerRadius(10)
                .padding(.leading, 20)
                .frame(width: (UIScreen.main.bounds.width))
                .padding(.trailing,20)
                .shadow(radius: 10)
                
                HStack{
                    HStack(spacing : 15){
                        Image(systemName: "person").foregroundColor(.black)
                    }.padding(.vertical,20)
                    Spacer()
                    Text("Güvenlik")
                }
                .padding(.vertical)
                .padding(.horizontal, 20)
                .background(.white)
                .cornerRadius(10)
                .padding(.leading, 20)
                .frame(width: (UIScreen.main.bounds.width))
                .padding(.trailing,20)
                .shadow(radius: 10)
                
                
                Spacer()
                
                HStack {
                    
                    HStack{
                        HStack(spacing : 15){
                            Image(systemName: "person").foregroundColor(.black)
                        }.padding(.vertical,20)
                        Spacer()
                        Text("Eklenebilir")
                    }
                    .padding(.vertical)
                    .padding(.horizontal, 20)
                    .background(.white)
                    .cornerRadius(10)
                    .padding(.leading, 35)
                    .frame(width: (UIScreen.main.bounds.width*0.7))
                    .padding(.trailing,10)
                    .shadow(radius: 10)
                    
                    
                    Spacer()
                    Button(action: {
                        logout.toggle()
                    }){
                        HStack{
                            HStack(spacing : 15){
                                Image(systemName: "door.left.hand.open").foregroundColor(.black).frame(width: (UIScreen.main.bounds.width/5))
                            }.padding(.vertical,20)
                        }
                        .background(.white)
                        .cornerRadius(10)
                        .frame(width: (UIScreen.main.bounds.width*0.3))
                    }.fullScreenCover(isPresented: $logout) {
                        WelcomeScreen()
                    }
                    
                }.padding(.trailing,20).shadow(radius: 10)
                
                
                CustomTabBar()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
