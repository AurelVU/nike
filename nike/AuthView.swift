//
//  AuthView.swift
//  nike
//
//  Created by Владимир Ушаков on 20.11.2023.
//

import SwiftUI

struct AuthView: View {
    @State private var email: String = ""
    
    var body: some View {
        NavigationStack {
            WebView(url: URL(string: "https://accounts.nike.com/lookup?client_id=4fd2d5e7db76e0f85a6bb56721bd51df&redirect_uri=https://www.nike.com/auth/login&response_type=code&scope=openid%20nike.digital%20profile%20email%20phone%20flow%20country&state=be94cae2830b4e6cbe8c35d56227dcb9&code_challenge=Gkj2jHEXcnE7b1OwQepoX14es9tdChKks9Brwefdy8A&code_challenge_method=S256")!)
                .ignoresSafeArea()
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle(Text("accounts.nike.com"))
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
