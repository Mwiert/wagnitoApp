//
//  MainScreen.swift
//  wagnitoApp
//
//  Created by Mert Şahin on 10.06.2023.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue.opacity(0.8)]), startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack{
                ScrollView{
                    HStack {
                        Button(action : {
                            
                        }){
                            Image(systemName: "plus.app.fill").resizable().foregroundColor(.white).padding(.top,10).aspectRatio( contentMode: .fill).frame(width: 35,height: 35)
                        }.padding(.leading,30)
                        Spacer()
                        Text("Wagnito").font(.custom(FontsManager.YellowTail.Regular, size: 50)).foregroundColor(.white).padding(.top, 10)
                        
                        Spacer()
                        
                        Button(action : {
                            
                        }){
                            Image(systemName: "person.fill").resizable().foregroundColor(.white).padding(.top,10).aspectRatio( contentMode: .fill).frame(width: 25,height: 25)
                        }.padding(.trailing,30)
                        
                    }.padding(.bottom,15)
                    Divider().background(.white).frame(width: UIScreen.main.bounds.width*0.9)
                    ScrollView{
                        ForEach(0..<20, id: \.self){num in
                            VStack{
                                HStack(spacing :16){
                                    Image(systemName:"person.fill").font(.system(size: 32))
                                        .padding()
                                        .overlay(RoundedRectangle(cornerRadius: 50).stroke(.white,lineWidth: 1))
                                        .foregroundColor(.white)
                                    VStack(alignment:.leading)
                                    {
                                        Text("Kullanıcı adı burada").foregroundColor(.white).bold()
                                        Text("Gönderilen son mesaj burada").foregroundColor(Color(.lightText))
                                    }
                                    Spacer()
                                    Text("20dk").font(.system(size: 14,weight: .semibold)).foregroundColor(.white)
                                }
                                Divider().background(.white)
                            }.padding(.horizontal)
                        }
                    }

                }


                Spacer()
                
                CustomTabBar()
            }
        }
    }
}

struct CustomTabBar: View {
    var body : some View{
        Divider().padding(.bottom,10).foregroundColor(.black).frame(height: 1)
        HStack{
            Spacer()
            Button{
                
            }label:{
                
                VStack(alignment: .center, spacing: 4) {
                    Image(systemName: "map.fill").resizable().scaledToFit().frame(width: 24,height: 24).foregroundColor(.white)
                    Text("Harita").font(.custom(FontsManager.LilitaOne.Regular, size: 12)).foregroundColor(.white)
                }
            }
            Spacer()
            Button{
                
            }label:{
                
                VStack(alignment: .center, spacing: 4) {
                    Image(systemName: "bubble.left.fill").resizable().scaledToFit().frame(width: 24,height: 24).foregroundColor(.white)
                    Text("Sohbet").font(.custom(FontsManager.LilitaOne.Regular, size: 12)).foregroundColor(.white)
                }
            }
            Spacer()
            Button{
                
            }label:{
                
                VStack(alignment: .center, spacing: 4) {
                    Image(systemName: "gearshape.fill").resizable().scaledToFit().frame(width: 24,height: 24).foregroundColor(.white)
                    Text("Ayarlar").font(.custom(FontsManager.LilitaOne.Regular, size: 12)).foregroundColor(.white)
                }
            }
            Spacer()
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}

