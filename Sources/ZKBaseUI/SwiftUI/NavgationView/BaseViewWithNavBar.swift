//
//  BaseViewWithNavBar.swift
//  PhoneClone
//
//  Created by 雷子康 on 2024/11/7.
//

import SwiftUI

//!!!:  请确保在使用时父视图已经推入NavigationView
public struct BaseViewWithNavBar<Content: View>: View {
    @Environment(\.presentationMode) private var presentMode
    
    public let title: String
    public let content: () -> Content
    /// 基础的带 NavBar的视图
    /// - Parameters:
    ///   - title:  nav title
    ///   - content: 内容视图，除了 if else 和 switch case 外，多个视图一定要使用 VStack 包装！否则会产生一系列 UI 问题
    public init(title: String,  @ViewBuilder content: @escaping () -> Content) {
        self.title = title
        self.content = content
    }
    public var body: some View {
        content()
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(title)
                        .bold()
                        .foregroundStyle(Color.primary)
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button { // 自定义的 nav back button
                        self.presentMode.wrappedValue.dismiss()
                    } label: {
                        NavBackButton()
                    }
                }
            }
    }
}

//#Preview {
//    BaseViewWithNavBar()
//}
