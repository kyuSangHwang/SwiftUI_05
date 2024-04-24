//
//  LIstRow.swift
//  LazyStacks
//
//  Created by 황규상 on 4/24/24.
//

import SwiftUI

struct LIstRow: View {
    let id: Int
    let type: String
    
    init(id: Int, type: String) {
        print("Loading \(type) item \(id)")
        self.id = id
        self.type = type
    }
    
    var body: some View {
        Text("\(type) \(id)").padding()
    }
}

#Preview {
    LIstRow(id: 1, type: "Horizontal")
}
