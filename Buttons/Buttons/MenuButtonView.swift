//
//  MenuButtonView.swift
//  Buttons
//
//  Created by 황규상 on 4/23/24.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        Menu("Choose a country") {
            Button("Canada") {
                print("Selected Canada")
            }
            
            Button("Mexico") {
                print("Selected Mexico")
            }
            
            Button("USA") {
                print("Selected USA")
            }
        }
        .navigationTitle("MenuButton")
    }
}

#Preview {
    NavigationStack {
        MenuButtonView()
    }
}
