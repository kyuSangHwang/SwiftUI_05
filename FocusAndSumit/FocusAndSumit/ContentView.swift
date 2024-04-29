//
//  ContentView.swift
//  FocusAndSumit
//
//  Created by 황규상 on 4/26/24.
//

import SwiftUI

struct ContentView: View {
    enum AddressField {
        case streetName
        case city
        case state
        case zipCode
    }
    
    @State private var streetName = ""
    @State private var city = ""
    @State private var state = ""
    @State private var zipCode = ""
    
    // 어떤 필드가 포커스를 가져야 하는지 추척하기 위한 변수
    @FocusState private var currentFocus: AddressField?
    
    var body: some View {
        VStack {
            TextField("Address", text: $streetName)
                .focused($currentFocus, equals: .streetName)
                .submitLabel(.next) // 키보드 입력이 들어왔을 때 return value
                .id("streetName")

            TextField("City", text: $city)
                .focused($currentFocus, equals: .city)
                .submitLabel(.next)
                .id("city")
            
            TextField("State", text: $state)
                .focused($currentFocus, equals: .state)
                .submitLabel(.next)
                .id("state")
            
            TextField("ZipCode", text: $zipCode)
                .focused($currentFocus, equals: .zipCode)
                .submitLabel(.done)
                .id("zipCode")
        }
        .padding()
        .onSubmit {
            switch currentFocus {
            case .streetName:
                currentFocus = .city
            case .city:
                currentFocus = .state
            case .state:
                currentFocus = .zipCode
            default:
                print("Done!!!")
                hideKeyboard()
            }
        }
        .onAppear {
            currentFocus = .streetName
        }
    }
    
    private func hideKeyboard() {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
}

#Preview {
    ContentView()
}
