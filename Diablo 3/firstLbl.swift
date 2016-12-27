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
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 22.0
        
    }

}
