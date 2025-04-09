//
//  File.swift
//  PhoneCloneKit
//
//  Created by 雷子康 on 2024/11/14.
//

import Foundation
import SwiftUI

public struct CapuselButton: View {
    let content: (text: String, desc: String, img: Image)
    let fillColor: Color
    let imgWidth: CGFloat
    
    public init(content: (text: String, desc: String, img: Image), fillColor: Color, imgWidth: CGFloat = 40) {
        self.content = content
        self.fillColor = fillColor
        self.imgWidth = imgWidth
    }
    
    public var body: some View {
        Capsule()
            .foregroundStyle(fillColor)
            .frame(height: 80)
            .overlay (alignment: .center){
                HStack {
                    
                    Spacer()
                        .frame(width: 20)
                    
                    content.img
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundStyle(Color(.white))
                        .frame(width: imgWidth, height: imgWidth)
                        .padding()
                    
                    VStack {
                        Text(content.text)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .bold()
                            .foregroundStyle(.white)
                        
                        Text(content.desc)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(.white)
                    }
                    
                }
            }
    }
}

#Preview {
    CapuselButton(content: (text: "Hello", desc: "word", img: Image(systemName: "apple.logo")), fillColor: .blue, imgWidth: 40)
        .padding()
}
