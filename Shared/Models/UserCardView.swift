//
//  UserCardView.swift
//  UniverseMessager
//
//  Created by Ivan Nekrasov on 01.10.2021.
//

import SwiftUI

struct UserCardView: View {
    let user: UserData
    var body: some View {
        HStack{
            Image("Photo")
                .resizable()
                .frame(width: 58, height: 58)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color("ButtonColor"), lineWidth: 1))
                
            VStack {
                HStack {
                    Text(user.name)
                    Spacer()
                    Text("Time")
                }
                .font(.headline)
                .padding(.top)
                Spacer()
                HStack {
                    Text("Last message in chat, What'll happen, when there'll be lot of text")
                    Spacer()
                    Text("Count")
                }
                Divider()
            }
        }
        
        .frame(height: 60)
        .padding(.horizontal, 2)
    }
}

struct UserCardView_Previews: PreviewProvider {
    static var user = UserData.data[0]
    static var previews: some View {
        UserCardView(user: user)
            .background(Color("BackgroundMain"))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
