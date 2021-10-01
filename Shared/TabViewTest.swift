//
//  StartView.swift
//  UniverseMessager
//
//  Created by Ivan Nekrasov on 30.09.2021.
//

import SwiftUI

struct TabViewTest: View {
    var body: some View {
        VStack {
            TabView {
                NavigationView {
                    VStack {
                        Image(systemName: "ellipsis.bubble")
                            .font(.system(size: 175, weight: .light))
                        Text("Universe")
                            .font(.system(size: 40))
                        VStack {
                            Text("The world's perfectious messaging app.")
                            Text("It is free, not secure.")
                        }
                        .font(.system(size: 15))
                    }
                    .frame(
                          minWidth: 0,
                          maxWidth: .infinity,
                          minHeight: 0,
                          maxHeight: .infinity
                        )
                    .background(.mint)
                }
                
                NavigationView {
                    VStack {
                        Image(systemName: "ellipsis.bubble")
                            .font(.system(size: 175, weight: .light))
                        Text("Galaxy")
                            .font(.system(size: 40))
                        VStack {
                            Text("The world's perfectious messaging app.")
                            Text("It is free, not secure.")
                        }
                        .font(.system(size: 15))
                    }
                    .frame(
                          minWidth: 0,
                          maxWidth: .infinity,
                          minHeight: 0,
                          maxHeight: .infinity
                        )
                    .background(.mint)
                }
            }
            Spacer()
            Button(action: {}) {
                Text("Start Messaging")
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
        .background(.mint)
    }
}


struct TabViewTest_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTest()
    }
}
