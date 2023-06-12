//
//  WelcomeScreen.swift
//  wagnitoApp
//
//  Created by Mert Şahin on 10.06.2023.
//

import SwiftUI

struct WelcomeScreen: View {
    @State var index = 0

    var body: some View {
        NavigationView(){
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue.opacity(0.8)]), startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Wagnito").font(.custom(FontsManager.YellowTail.Regular, size: 80)).foregroundColor(.white).padding(.top, 50)
                    Spacer()
                    HStack(spacing: 15){
                        Button(action: {
                            withAnimation(.spring(response: 0.8,dampingFraction: 0.5,blendDuration: 0.5)){
                                self.index = 0
                            }
                            
                        }){
                            Text("Giriş Yap").foregroundColor(self.index == 0 ? .black : .white).fontWeight(.bold).padding(.vertical, 10).frame(width: (UIScreen.main.bounds.width-50)/2)
                        }.background(self.index == 0 ? .white : .clear).clipShape(Capsule())
                        Button(action: {
                            withAnimation(.spring(response: 0.8,dampingFraction: 0.5,blendDuration: 0.5)){
                                self.index = 1
                            }
                        }){
                            Text("Kayıt Ol").foregroundColor(self.index == 1 ? .black : .white  ).fontWeight(.bold).padding(.vertical, 10).frame(width: (UIScreen.main.bounds.width-50)/2)
                        }.background(self.index == 1 ? .white : .clear).clipShape(Capsule())
                    }.background(Color.black.opacity(0.1)).clipShape(Capsule())
                    if self.index == 0 {
                            LoginPanel()
                    }
                    else{
                            RegisterPanel()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}

struct LoginPanel: View {
    @State var mail = ""
    @State var password = ""
    @State private var currentView = false
    var body: some View {
        VStack{
            HStack(spacing : 15){
                Image(systemName: "envelope").foregroundColor(.black)
                TextField("Email Adresinizi Giriniz.", text: self.$mail)
            }.padding(.vertical,20)
            
            Divider()
            
            HStack(spacing : 15){
                Image(systemName: "lock").resizable().frame(width: 15,height: 18).foregroundColor(.black)
                SecureField("Şifrenizi Giriniz.", text: self.$password).padding(.vertical,20)
                Button(action : {
                   
                }) {
                    Image(systemName: "eye").foregroundColor(.black)
                }
                
            }.padding(.vertical,20)
        }
        .padding(.vertical)
        .padding(.horizontal, 20)
        .background(.white)
        .cornerRadius(10)
        .padding(.top, 20)
        .padding(.leading,10)
        .padding(.trailing,10)
        
        Button(action: {
            
            // VM'den kullanıcı bilgisi gelirse ekran geçişi yapılacak.
            // Email ve şifre kontrolü olacak
            currentView.toggle()
        }){
            Text("Giriş Yap").padding(.vertical)
                .frame(width: UIScreen.main.bounds.width-100)
        }.fullScreenCover(isPresented: $currentView, content: {
            MainScreen()
        }).background(
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue.opacity(0.8)]), startPoint: .topTrailing, endPoint: .bottomLeading)).cornerRadius(18).foregroundColor(.white).bold().font(Font.system(size:20)).offset(y:-20)
            .padding(.bottom , -20)
            .shadow(radius: 20)
            

        
        HStack{
            Color.white.opacity(0.7).frame(width: UIScreen.main.bounds.width/4,height: 1)
        }.padding(.top,10)
            .padding(.bottom,10)
        Button(action: {
            
        }){
            Text("Şifrenizi mi unuttunuz?").foregroundColor(.white)
        }
    }
}

struct RegisterPanel: View {
    @State var mail = ""
    @State var password = ""
    @State var repassword = ""
    @State private var currentView = false
    var body: some View {
        VStack{
            HStack(spacing : 15){
                Image(systemName: "envelope").foregroundColor(.black)
                TextField("Email Adresinizi Giriniz.", text: self.$mail)
            }.padding(.vertical,20)
            
            Divider()
            
            HStack(spacing : 15){
                Image(systemName: "lock").resizable().frame(width: 15,height: 18).foregroundColor(.black)
                SecureField("Şifrenizi Giriniz.", text: self.$password).padding(.vertical,10)
                Button(action : {
                   
                }) {
                    Image(systemName: "eye").foregroundColor(.black)
                }
                
            }.padding(.vertical,20)
            Divider()
            
            HStack(spacing : 15){
                Image(systemName: "lock").resizable().frame(width: 15,height: 18).foregroundColor(.black)
                SecureField("Şifrenizi Tekrar Giriniz.", text: self.$repassword).padding(.vertical,10)
                Button(action : {
                   
                }) {
                    Image(systemName: "eye").foregroundColor(.black)
                }
                
            }.padding(.vertical,20)
        }
        .padding(.vertical)
        .padding(.horizontal, 20)
        .background(.white)
        .cornerRadius(10)
        .padding(.top, 20)
        .padding(.leading,10)
        .padding(.trailing,10)
        
        Button(action: {
            currentView.toggle()
        }){
            Text("Kayıt Ol").padding(.vertical)
                .frame(width: UIScreen.main.bounds.width-100)
        }.fullScreenCover(isPresented: $currentView, content: {
            //kontrollerden sonra view değişecek veya değişmeyecek
            RegisterView()
        }).background(
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue.opacity(0.8)]), startPoint: .topTrailing, endPoint: .bottomLeading)).cornerRadius(18).foregroundColor(.white).bold().font(Font.system(size:20)).offset(y:-20)
            .padding(.bottom , -20)
            .shadow(radius: 20)
    }
}
