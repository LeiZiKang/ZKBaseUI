//
//  SheetNavigationTitle.swift
//  PhoneClone
//
//  Created by 雷子康 on 2024/11/7.
//

import SwiftUI

struct LittleNavigationTitle: View {
    let text: String
    var body: some View {
        Text(text)
            .foregroundStyle(Color.primary)
            .bold()
    }
}

//#Preview {
//    SheetNavigationTitle()
//}
