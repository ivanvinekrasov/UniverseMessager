//
//  StartView.swift
//  UniverseMessager
//
//  Created by Ivan Nekrasov on 30.09.2021.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image(systemName: "ellipsis.bubble")
                    .font(.system(size: 175, weight: .light))
                Text("Universe")
                    .font(.system(size: 40))
                VStack {
                    Text("The world's perfectious messaging app.")
                    Text("It is free, not secure.")
                }
                .font(.system(size: 15))
                Spacer()
                Button(action: {}) {
                    NavigationLink(destination: LoginView()) {
                        Text("Start Messaging")
                    }
                }
                .buttonStyle(GrowingButton())
                Spacer()
            }
            .frame(
                  minWidth: 0,
                  maxWidth: .infinity,
                  minHeight: 0,
                  maxHeight: .infinity
                )
            .background(Color("BackgroundMain"))
        }
    }
}


struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color("ButtonColor"))
//            .foregroundColor(.white)
            .foregroundColor(Color("ButtonTextColor"))
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.05 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
