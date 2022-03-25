//
//  UIViewExtension.swift
//  pageview
//
//  Created by 김경환 on 2022/03/25.
//

import Foundation
import UIKit

extension UIView {
    func addAction(action : @escaping () -> ()) {
        let tap = TapGestureRecognizer(target: self , action: #selector(self.tapGestuer(_:)))
        tap.action = action
        
        tap.numberOfTapsRequired = 1
        tap.numberOfTouchesRequired = 1

        self.addGestureRecognizer(tap)
        self.isUserInteractionEnabled = true
    }
    
    @objc func tapGestuer(_ sender: TapGestureRecognizer) {
        sender.action!()
    }
}

class TapGestureRecognizer: UITapGestureRecognizer {
    var action : (() -> ())? = nil
}
