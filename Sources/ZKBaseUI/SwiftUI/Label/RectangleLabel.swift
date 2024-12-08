//
//  File.swift
//  PhoneCloneKit
//
//  Created by 雷子康 on 2024/12/8.
//

import Foundation
import SwiftUI

public struct RectangleLabel: View {
    let name: String
    let foreGroundColor: Color
    public init(name: String, foreGroundColor: Color = .primary) {
        self.name = name
        self.foreGroundColor = foreGroundColor
    }
    public var body: some View {

        Rectangle()
            .fill(Color.primary.opacity(0.2))
            .frame(height: 40)
            .cornerRadius(12)
            .overlay {
                Text(name)
                    .font(.system(size: 14))
                    .padding()
                    .foregroundStyle(foreGroundColor)
            }
    }
}
