//
//  firstLbl.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2016-12-27.
//  Copyright © 2016 Gustav Wadström. All rights reserved.
//

import UIKit

class firstLbl: UILabel {


    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        layer.masksToBounds = true
        layer.cornerRadius = 13.0
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize(width: 2, height: 1)
        
    }

}
