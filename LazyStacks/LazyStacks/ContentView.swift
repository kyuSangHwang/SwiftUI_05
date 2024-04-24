//
//  ContentView.swift
//  LazyStacks
//
//  Created by 황규상 on 4/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(1...10000, id: \.self) { item in
                        LIstRow(id: item, type: "Horizontal")
                    }
                }
            }
            .frame(height: 100, alignment: .center)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
