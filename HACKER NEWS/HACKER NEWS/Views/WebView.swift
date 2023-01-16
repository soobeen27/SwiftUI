//
//  WebView.swift
//  HACKER NEWS
//
//  Created by Soo Jang on 2023/01/16.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard urlString != nil else { return }
        guard let url = URL(string: urlString!) else { return }
        let request = URLRequest(url: url)
        uiView.load(request)
        
    }
}
