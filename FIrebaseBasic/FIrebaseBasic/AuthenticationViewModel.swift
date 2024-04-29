//
//  AuthenticationViewModel.swift
//  FIrebaseBasic
//
//  Created by 황규상 on 4/29/24.
//

import Foundation
import FirebaseAuth
import GoogleSignIn

@Observable
final class AuthenticationViewModel {
    enum State {
        case busy
        case signedIn
        case signedOut
    }
    
    var state: State = .busy
    private var authResult: AuthDataResult? = nil
    var userName: String { authResult?.user.displayName ?? ""}
    var userEmail: String { authResult?.user.email ?? ""}
    var photoURL: URL? { authResult?.user.photoURL }
    
    func logout() {
        
    }
    
    func restorePreviousSighIn() {
        
    }
    
    func login() {
        
    }
    
    private func signIn(user: GIDGoogleUser?) async {
        
    }
    
}
