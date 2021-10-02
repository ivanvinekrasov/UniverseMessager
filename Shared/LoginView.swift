//
//  LoginView.swift
//  UniverseMessager
//
//  Created by Ivan Nekrasov on 01.10.2021.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationView {
            VStack{
                HStack {
                    Spacer()
                    Button(action: {}) {
                        NavigationLink(destination: UserView(users: UserData.data)) {
                                Text("Next")
                                .padding()
                        }
                    }
                }
                Spacer()
                Text("Your account")
                    .font(.system(size: 40, weight: .ultraLight))
                    .padding(.bottom)
                Text("Please enter your personal invitational data.")
                    .padding(.bottom)
                VStack {
                    Divider()
                    TextField("User", text: $username)
                    Divider()
                    SecureField("Password", text: $password)
                    Divider()
                }
                .padding(.horizontal)
                .font(.system(size: 30))
                Spacer()
                Spacer()
            }
            .background(Color("BackgroundMain"))
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
