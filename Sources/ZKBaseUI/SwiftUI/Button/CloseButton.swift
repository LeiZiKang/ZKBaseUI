//
//  CloseButton.swift
//  PhoneClone
//
//  Created by 雷子康 on 2024/11/7.
//

import SwiftUI

public struct CloseButton: View {
  public init() {
        
    }
   public var body: some View {
        Image(systemName: "xmark.circle")
            .foregroundStyle(Color.primary)
    }
}

#Preview {
    CloseButton()
}
