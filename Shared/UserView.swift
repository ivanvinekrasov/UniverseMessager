//
//  UserView.swift
//  UniverseMessager
//
//  Created by Ivan Nekrasov on 02.10.2021.
//

import SwiftUI

struct UserView: View {
    let users: [UserData]
    var body: some View {
        ScrollView {
            ForEach(users) { user in
                UserCardView(user: user)
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .background(Color("BackgroundMain"))
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(users: UserData.data)
    }
}
