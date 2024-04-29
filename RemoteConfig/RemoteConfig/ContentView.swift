//
//  ContentView.swift
//  RemoteConfig
//
//  Created by 황규상 on 4/29/24.
//

import SwiftUI
import Firebase
import FirebaseRemoteConfigSwift

class RemoteConfiguration {
    private var remoteConfig = Firebase.RemoteConfig.remoteConfig()
}

struct ContentView: View {
    private var config = RemoteConfiguration()
    @RemoteConfigProperty(key: "screenType", fallback: nil) var screenType: String?
    
    private var image: (name: String, color: Color) {
        if screenType == "screenA" { // Tuple 형태의 Computed Property
            ("a.square", .green)
        } else if screenType == "screenB" {
            ("b.square", .blue)
        } else {
            ("questionmark.square", .red)
        }
    }
    
    var body: some View {
        VStack {
            if screenType != nil {
                Image(systemName: image.name)
                    .foregroundStyle(.red)
                    .font(.system(size: 350))
            } else {
                ProgressView()
                    .controlSize(.large)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
