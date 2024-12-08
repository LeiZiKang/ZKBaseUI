//
//  SwiftUIView.swift
//  PhoneCloneKit
//
//  Created by 雷子康 on 2024/11/11.
//

import SwiftUI

public struct BaseSelectedView<Content: View>: View {
    @Environment(\.dismiss) private var dismiss
    
    public let content: () -> Content
    public var itemsCount: Int
    public  let title: String
    /// TODO: 添加取消操作
    public var cancleBtnAction: () -> Void
    /// TODO: 添加保存操作
    public var saveBtnAction: () -> Void
    /// TODO: 添加picker操作
    public var pickerAction: () -> Void
    
    public init(content: @escaping () -> Content, itemsCount: Int, title: String, cancleBtnAction: @escaping () -> Void, saveBtnAction: @escaping () -> Void, pickerAction: @escaping () -> Void) {
        self.content = content
        self.itemsCount = itemsCount
        self.title = title
        self.cancleBtnAction = cancleBtnAction
        self.saveBtnAction = saveBtnAction
        self.pickerAction = pickerAction
    }
    
    public var body: some View {
        NavigationStack {
            
            content()
            
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            cancleBtnAction()
                            self.dismiss()
                        } label: {
                            Text("取消")
                                .foregroundStyle(Color.primary)
                        }
                        
                    }
                    
                    ToolbarItem(placement: .principal) {
                        Text(title)
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        
                        
                        Button("确定") {
                            saveBtnAction()
                            self.dismiss()
                        }
                        
                    }
                    
                    ToolbarItem(placement: .bottomBar) {
                        HStack {
                            Text("已选：" + String(itemsCount))
                                .foregroundStyle(Color.primary)
                            
                            Spacer()
                            
                            Button {
                                pickerAction()
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundStyle(Color.primary)
                            }
                        }
                    }
                }
        }
    }
}

