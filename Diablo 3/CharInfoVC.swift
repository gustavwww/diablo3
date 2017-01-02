//
//  CharInfoVC.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2016-12-28.
//  Copyright © 2016 Gustav Wadström. All rights reserved.
//

import UIKit

class CharInfoVC: UIViewController {

    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var charImg: UIImageView!
    @IBOutlet weak var lvlLbl: infoLbl!
    @IBOutlet weak var clasLbl: infoLbl!
    @IBOutlet weak var hardCoreLbl: infoLbl!
    @IBOutlet weak var charInvImg: invImageView!
    
    
    
    var char: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
        
    }
    
    func updateUI() {
        
        headerLbl.text = char.name
        charImg.image = UIImage(named: char.clas + char.gender.asString)
        lvlLbl.text = char.level.asString
        clasLbl.text = char.clas.capitalized
        charInvImg.image = UIImage(named: char.clas + char.gender.asString + "-inv")
        
        //Hardcore check
        switch char.isHardCore {
        case true:
            hardCoreLbl.text = "YES"
            break
        default:
            hardCoreLbl.text = "NO"
        }
        
        
        
        
    }

    @IBAction func backPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
}
