//
//  Shadow.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2016-12-30.
//  Copyright © 2016 Gustav Wadström. All rights reserved.
//

import UIKit

protocol Shadow {}

extension Shadow where Self: UIView {
    
    func setUnderShadow() {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    
    }
    
    func setLightShadow() {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize(width: 2, height: 1)
        
    }
    
}
