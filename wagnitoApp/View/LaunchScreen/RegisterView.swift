//
//  RegisterView.swift
//  wagnitoApp
//
//  Created by Mert Şahin on 10.06.2023.
//

import SwiftUI
import Firebase

class FirebaseManager: NSObject {

    let auth: Auth

    static let shared = FirebaseManager()

    override init() {
        FirebaseApp.configure()

        self.auth = Auth.auth()

        super.init()
    }

}

struct RegisterView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue.opacity(0.8)]), startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Wagnito").font(.custom(FontsManager.YellowTail.Regular, size: 80)).foregroundColor(.white).padding(.top, 50)
                Spacer()
                    Text("Mail adresinize gelen doğrulama kodunu giriniz.").font(.custom(FontsManager.YellowTail.Regular, size: 20)).foregroundColor(.white)
                Spacer()
                verifyPanel()
                Spacer()
                HStack{
                    VStack{
                        
                
                    Text("Doğrulama kodunu almadınız mı?.").font(.custom(FontsManager.YellowTail.Regular, size: 20)).foregroundColor(.white)
                    Button(action: {
                        
                    }){
                        Text("Tekrar iste").padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width-200)
                    }.background(
                        LinearGradient(gradient: Gradient(colors: [Color.gray, Color.blue.opacity(0.8)]), startPoint: .topTrailing, endPoint: .bottomLeading)).cornerRadius(16).foregroundColor(.white).bold().font(Font.system(size:16))
                        .shadow(radius: 18)
                    }
                }
                Spacer()
                
            }
        }
    }
}

struct verifyPanel: View {
    @State var name = ""
    @State var verifyCode = ""
    var body: some View {
        VStack{
            HStack(spacing : 15){
                Image(systemName: "pencil").foregroundColor(.black)
                TextField("Adınızı Giriniz.", text: self.$name)
            }.padding(.vertical,20)
            
            Divider()
            
            HStack(spacing : 15){
                Image(systemName: "key").resizable().frame(width: 15,height: 18).foregroundColor(.black)
                SecureField("Doğrulama Kodunu Giriniz.", text: self.$verifyCode).padding(.vertical,10)
                
            }.padding(.vertical,20)
            Divider()

        }
        .padding(.vertical)
        .padding(.horizontal, 20)
        .background(.white)
        .cornerRadius(10)
        .padding(.top, 20)
        .padding(.leading,10)
        .padding(.trailing,10)
        
        Button(action: {
            
        }){
            Text("Devam et").padding(.vertical)
                .frame(width: UIScreen.main.bounds.width-100)
        }.background(
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue.opacity(0.8)]), startPoint: .topTrailing, endPoint: .bottomLeading)).cornerRadius(18).foregroundColor(.white).bold().font(Font.system(size:20)).offset(y:-20)
            .padding(.bottom , -20)
            .shadow(radius: 20)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
