//
//  SwiftUIView.swift
//  ZKBaseUI
//
//  Created by Lei Levi on 24/1/2025.
//

import SwiftUI

public struct CheckMarkCircleLabel: View {
    
    let isSelected: Bool
    let animation: Animation
    
    public init(isSelected: Bool, animation: Animation = .bouncy) {
        self.isSelected = isSelected
        self.animation = animation
    }
    
    public var body: some View {
        Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
            .bold()
            .animation(animation, value: isSelected)
    }
}

#if DEBUG
fileprivate struct TestView: View {
    @State var isSelected = false
    var body: some View {
        Button {
            isSelected.toggle()
        } label: {
            CheckMarkCircleLabel(isSelected: isSelected)
        }
    }
}
#Preview {
    TestView()
}
#endif
