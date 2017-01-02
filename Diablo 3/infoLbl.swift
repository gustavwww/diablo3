//
//  infoLbl.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2016-12-31.
//  Copyright © 2016 Gustav Wadström. All rights reserved.
//

import UIKit

class infoLbl: UILabel, Shadow {
    
    override func draw(_ rect: CGRect) {
        super.drawText(in: rect)
        
        setLightShadow()
        
    }
    

}
