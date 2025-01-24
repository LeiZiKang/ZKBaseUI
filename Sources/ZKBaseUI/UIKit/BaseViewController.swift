//
//  BaseViewController.swift
//  ZKBaseUI
//
//  Created by Lei Levi on 24/1/2025.
//

import UIKit

open class BaseViewController: UIViewController {

    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI() {
        // background
        view.backgroundColor = .systemBackground
        
    }
    
    @discardableResult public func navTitle(_ title: String) -> Self {
        self.navigationItem.title = title
        return self
    }
    
    @discardableResult public func backGroundColor(_ color: UIColor) -> Self   {
        view.backgroundColor = color
        return self
    }
    

}

#if DEBUG

#Preview {
    let testVC = BaseViewController()
//        .backGroundColor(.systemBackground)
        .navTitle("你好")
    
    return UINavigationController(rootViewController: testVC)
}

#endif
