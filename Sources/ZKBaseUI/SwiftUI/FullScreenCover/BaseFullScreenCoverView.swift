//
//  BaseFullScreenCoverView.swift
//  PhoneClone
//
//  Created by 雷子康 on 2024/11/7.
//

import SwiftUI

public struct BaseFullScreenCoverView<Content: View>: View {
    @Environment(\.dismiss) private var dismiss
    public let title: String
    public let content: () -> Content
    
    public init( title: String, content: @escaping () -> Content) {
   
        self.title = title
        self.content = content
    }
    public var body: some View {
        NavigationStack{
            content()
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button{
                            self.dismiss()
                        } label: {
                            CloseButton()
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        Text(self.title)
                            .bold()
                            .foregroundStyle(Color.primary)
                    }
                }
               
        }
    }
}

//#Preview {
//    BaseFullScreenCoverView()
//}
