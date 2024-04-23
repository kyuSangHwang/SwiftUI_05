//
//  ContentView.swift
//  UIKitToSwiftUI
//
//  Created by 황규상 on 4/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animate: Bool = true
    var body: some View {
        VStack {
            ActivityIndicator(animating: animate)
            HStack {
                Toggle(isOn: $animate) {
                    Text("Toggle Activity")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
