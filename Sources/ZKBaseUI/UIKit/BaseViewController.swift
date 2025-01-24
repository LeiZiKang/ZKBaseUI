//
//  BaseViewController.swift
//  ZKBaseUI
//
//  Created by Lei Levi on 24/1/2025.
//

import UIKit

class BaseViewController: UIViewController {

   private  var navTitle: String?
   private  var backgroundColor: UIColor = .systemBackground
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI() {
        
        // background
        view.backgroundColor = backgroundColor
        
        // nav bar
        self.navigationItem.title = navTitle
    }
    
    @discardableResult public func navTitle(_ title: String) -> Self {
        self.navTitle = title
        return self
    }
    
    @discardableResult public func backGroundColor(_ color: UIColor) -> Self   {
        self.backgroundColor = color
        return self
    }
    

}

#if DEBUG

#Preview {
    let testVC = BaseViewController()
        .backGroundColor(.systemBackground)
        .navTitle("你好")
    
    return UINavigationController(rootViewController: testVC)
}

#endif
