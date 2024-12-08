//
//  SwiftUIView.swift
//  PhoneCloneKit
//
//  Created by 雷子康 on 2024/12/9.
//

import SwiftUI

public struct CircleLabel: View {
    let image: Image
    let color: Color
    let text: String
    let circleSize: CGFloat = UIScreen.main.bounds.width / 4.0
    public init(image: Image, color: Color, text: String) {
        self.image = image
        self.color = color
        self.text = text
    }
    public var body: some View {
        VStack {
            Circle()
                .foregroundStyle(color)
                .overlay(alignment: .center) {
                    image
                        .font(.largeTitle)
                        .foregroundStyle(Color(.white))
                }
                .frame(width: circleSize, height: circleSize)
                .padding()

            Text(text)
                .foregroundStyle(Color.primary)
                .font(.title)
        }
    }
}

#Preview {
    CircleLabel(
        image: Image(systemName: "paperplane.fill"), color: Color(.systemGreen),
        text: "发送")
}
