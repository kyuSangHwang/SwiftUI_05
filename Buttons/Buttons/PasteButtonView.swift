//
//  PasteButtonView.swift
//  Buttons
//
//  Created by 황규상 on 4/23/24.
//

import SwiftUI

struct PasteButtonView: View {
    @State var text = String()
    var body: some View {
        VStack {
            Text("PasteButton controls how you paste in macOS but is not available in iOS...")
                .padding()
        }
        .navigationTitle("PasteButton")
    }
}

#Preview {
    PasteButtonView()
}
