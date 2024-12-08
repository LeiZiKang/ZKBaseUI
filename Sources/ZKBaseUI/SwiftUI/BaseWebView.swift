//
//  File.swift
//  PhoneCloneKit
//
//  Created by 雷子康 on 2024/11/9.
//

import Foundation
import SwiftUI
import WebKit

public struct BaseWebView: UIViewRepresentable {
    
    let url: URL
 
    public init(url: URL) {
        self.url = url
    }
    
    public func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    public func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
