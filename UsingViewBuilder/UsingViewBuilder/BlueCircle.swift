//
//  BlueCircle.swift
//  UsingViewBuilder
//
//  Created by 황규상 on 4/23/24.
//

import SwiftUI

struct BlueCircle<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        HStack {
            content
            Spacer()
            Circle()
                .fill(Color.green)
                .frame(width: 20, height: 30)
        }
    }
}
