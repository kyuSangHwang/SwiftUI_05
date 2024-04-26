//
//  SecondView.swift
//  PreviewingInNavigationStack
//
//  Created by 황규상 on 4/26/24.
//

import SwiftUI

struct SecondView: View {
    var someText: String
    
    var body: some View {
        Text(someText)
            .navigationTitle("Second View")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview("SecondView") {
    NavigationStack {
        SecondView(someText: "This is the second view")
    }
}
