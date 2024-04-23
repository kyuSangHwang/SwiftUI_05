//
//  ContentView.swift
//  UsingViewBuilder
//
//  Created by 황규상 on 4/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BlueCircle {
                Text("some text here")
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 40, height: 40)
            }
            
            BlueCircle {
                Text("Another example")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
