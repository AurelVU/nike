//
//  WebView.swift
//  nike
//
//  Created by Владимир Ушаков on 20.11.2023.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    // 1
    let url: URL

    
    // 2
    func makeUIView(context: Context) -> WKWebView {

        return WKWebView()
    }
    
    // 3
    func updateUIView(_ webView: WKWebView, context: Context) {

        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: URL(string: "https://accounts.nike.com/lookup?client_id=4fd2d5e7db76e0f85a6bb56721bd51df&redirect_uri=https://www.nike.com/auth/login&response_type=code&scope=openid%20nike.digital%20profile%20email%20phone%20flow%20country&state=be94cae2830b4e6cbe8c35d56227dcb9&code_challenge=Gkj2jHEXcnE7b1OwQepoX14es9tdChKks9Brwefdy8A&code_challenge_method=S256")!)
    }
}
