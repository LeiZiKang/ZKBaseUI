//
//  SwiftUIView.swift
//  PhoneCloneKit
//
//  Created by 雷子康 on 2024/12/1.
//

import SwiftUI

public struct PhoneConnectView: View {
    private let phoneIconFrame: CGFloat
    private let linkIconFrame: CGFloat
    private var isConnect: Bool
    public init(phoneIconFrame: CGFloat, linkIconFrame: CGFloat, isConnect: Bool = false) {
        self.phoneIconFrame = phoneIconFrame
        self.linkIconFrame = linkIconFrame
        self.isConnect = isConnect
    }
    public var body: some View {
        VStack {
           
            Image(systemName: self.isConnect ? "iphone" : "iphone.radiowaves.left.and.right")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: phoneIconFrame, height: phoneIconFrame, alignment: .top)
                .foregroundStyle(self.isConnect ? Color(.systemGreen) : .primary)
            
            Group{
                if #available(iOS 18.0, *) {
                    Image(systemName: self.isConnect ? "personalhotspot" : "personalhotspot.slash")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: linkIconFrame, height: linkIconFrame)
                        .symbolEffect(.breathe)
                        .foregroundStyle(self.isConnect ? Color(.systemGreen) : .primary)
                } else {
                    Image(systemName: self.isConnect ? "personalhotspot" : "personalhotspot.slash")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: linkIconFrame, height: linkIconFrame)
                        .foregroundStyle(self.isConnect ? Color(.systemGreen) : Color.red)
                }
            }
            .padding()
        }
        .animation(.easeInOut, value: isConnect)
    }
}

#if DEBUG
#Preview {
    PhoneConnectView(phoneIconFrame: UIScreen.main.bounds.width - 80, linkIconFrame: UIScreen.main.bounds.height / 15.0)
}
#endif
