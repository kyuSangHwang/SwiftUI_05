//
//  Greetings.swift
//  SwiftUIToUIKit
//
//  Created by 황규상 on 4/24/24.
//

import SwiftUI

struct Greetings: View {
    var textFromUIKit: String
    
    var body: some View {
        Text(textFromUIKit)
    }
}

#Preview {
    Greetings(textFromUIKit: "Hello, World!")
}
