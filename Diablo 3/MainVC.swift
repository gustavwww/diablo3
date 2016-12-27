//
//  ViewController.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2016-12-27.
//  Copyright © 2016 Gustav Wadström. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? MainVC {
            
            
        }
        
    }

    @IBAction func searchPressed(_ sender: Any) {
        //Download data and check if valid.
        
        
        
    }


}

