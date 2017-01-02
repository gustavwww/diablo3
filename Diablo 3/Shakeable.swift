//
//  Shakeable.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2016-12-30.
//  Copyright © 2016 Gustav Wadström. All rights reserved.
//

import UIKit

protocol Shakeable {}

extension Shakeable where Self: UIView {
    
    
    func shake() {
        
        let anim = CABasicAnimation(keyPath: "position")
        anim.duration = 0.1
        anim.repeatCount = 5
        anim.autoreverses = true
        anim.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x, y: self.center.y))
        anim.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 10, y: self.center.y))
        
        layer.add(anim, forKey: "position")
        
    }
    
}
