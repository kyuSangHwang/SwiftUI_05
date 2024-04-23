//
//  ButtonView.swift
//  Buttons
//
//  Created by 황규상 on 4/23/24.
//

import SwiftUI

struct ButtonView: View {
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Welcome to your second view")
            Text("Current count value: \(count)")
            Button {
                count += 1
            } label: {
                Text("Tap to Increment count")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.blue)
                    .clipShape(Capsule())
            }
            Button {
                count -= 1
            } label: {
                Text("Tap to decrement count")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.blue)
                    .clipShape(Capsule())
            }
            Button {
                count = 0
            } label: {
                Text("Tap to reset count")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.blue)
                    .clipShape(Capsule())
            }
        }
        .navigationTitle("Button View")
    }
}

#Preview {
    NavigationStack {
        ButtonView()
    }
}
