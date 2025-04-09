//
//  File.swift
//  PhoneCloneKit
//
//  Created by 雷子康 on 2024/11/27.
//

import Foundation
import SwiftUI


public struct RoundRectangleButton: View {
    let label: String
    let color: Color
    public init (label: String, color: Color) {
        self.label = label
        self.color = color
    }
    public var body: some View {
        Text(label)
            .font(.system(size: 14, weight: .bold))
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(color)
            .cornerRadius(5)
    }
}

#Preview {
    RoundRectangleButton(label: "Hello", color: .blue)
        .padding()
}
