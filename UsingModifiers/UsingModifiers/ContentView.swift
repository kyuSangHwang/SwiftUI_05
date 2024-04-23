//
//  ContentView.swift
//  UsingModifiers
//
//  Created by 황규상 on 4/23/24.
//

import SwiftUI

struct BackgroundStyle: ViewModifier {
    var bgColor: Color
    func body(content: Content) -> some View {
        content
            .frame(width: UIScreen.main.bounds.width * 0.3) // UI : UIKit에서 가져오는 객체들
            .foregroundStyle(.black)
            .padding()
            .background(bgColor)
            .cornerRadius(20)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Perfect").modifier(BackgroundStyle(bgColor: .green))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
