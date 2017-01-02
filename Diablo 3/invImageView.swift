//
//  invImageView.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2017-01-01.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

@IBDesignable
class invImageView: UIImageView {


    @IBInspectable var cornerRadius: CGFloat = 0 {
        
        didSet {
            layer.masksToBounds = true
            layer.cornerRadius = cornerRadius
            
        }
        
    }

}
