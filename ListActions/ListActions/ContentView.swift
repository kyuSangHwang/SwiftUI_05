//
//  ContentView.swift
//  ListActions
//
//  Created by 황규상 on 4/24/24.
//

import SwiftUI

struct ContentView: View {
    @State var numbers = [1, 2, 3, 4]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(numbers, id: \.self) { number in
                    Text("\(number)")
                }
            }
            .navigationTitle("Number List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    Button("Add") {
                        addItemToRow()
                    }
                    Button("Sort") {
                        sortItems()
                    }
                    Spacer()
                }
            }
        }
    }
    
    private func addItemToRow() {
        numbers.append(Int.random(in: 5..<100))
    }
    
    private func sortItems() {
        numbers.sort()
    }
}

#Preview {
    ContentView()
}
