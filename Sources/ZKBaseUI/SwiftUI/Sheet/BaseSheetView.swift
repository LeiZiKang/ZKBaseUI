//
//  BaseSheetView.swift
//  PhoneClone
//
//  Created by 雷子康 on 2024/11/7.
//

import SwiftUI

public struct BaseSheetView<Content: View>: View {
    public let title: String
    public let content: () -> Content
    @Environment(\.dismiss) private var dismiss
    
    public init(title: String, content: @escaping () -> Content) {
        self.title = title
        self.content = content
    }
    public var body: some View {
        NavigationStack {
            content()
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text(title)
                            .bold()
                            .foregroundStyle(Color.primary)
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            self.dismiss()
                        } label: {
                            CloseButton()
                        }
                    }
                    
                }
            
        }
    }
}

//#Preview {
//    BaseSheetView()
//}
