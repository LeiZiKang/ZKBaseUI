//
//  SwiftUIView.swift
//  PhoneCloneKit
//
//  Created by 雷子康 on 2024/12/4.
//

import SwiftUI

public struct RoundRectangleButtonBig: View {
    let text: String
    let color: Color
    public init(text: String, color: Color) {
        self.text = text
        self.color = color
    }
    public var body: some View {
        Text(text)
            .font(.system(size: 18, weight: .bold))
            .frame(maxWidth: .infinity)
            .padding(.vertical, 18)
            .foregroundColor(.primary)
            .background(color)
            .cornerRadius(12)
    }
}

#Preview {
    HStack {
        Button {
            
        } label: {
            RoundRectangleButton(label: "拒绝", color: Color.red)
                .padding()
        }
        Button {
            
        } label: {
            RoundRectangleButton(label: "接收", color: Color.blue)
                .padding()
        }
    }
}
