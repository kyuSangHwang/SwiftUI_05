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
                        // UI : UIKit에서 가져오는 객체들.
            .frame(width: UIScreen.main.bounds.width * 0.3) // 모바일 가로 면적에 30% 라고 이해하면 됨.
            .foregroundStyle(.black)
            .padding()
            .background(bgColor)
            .cornerRadius(20)
    }
}

extension View {
    func customBackgroundStyle(color: Color) -> some View {
        modifier(BackgroundStyle(bgColor: color))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Perfect")
                .customBackgroundStyle(color: .green)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
