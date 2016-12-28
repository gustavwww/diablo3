//
//  CharCell.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2016-12-27.
//  Copyright © 2016 Gustav Wadström. All rights reserved.
//

import UIKit

class CharCell: UITableViewCell {

    
    @IBOutlet weak var charImage: UIImageView!
    @IBOutlet weak var charName: UILabel!
    @IBOutlet weak var charLevel: UILabel!
    @IBOutlet weak var view: UIView!
    
    var char: Character!
    
    func configureCell(char: Character) {
        
        self.char = char
        
        charName.text = char.name
        charLevel.text = "Level \(char.level)"
        
        charImage.image = UIImage(named: "\(char.clas)\(char.gender)")
        
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 3, height: 1)
        view.layer.shadowOpacity = 1
        
    }
    
    
}
