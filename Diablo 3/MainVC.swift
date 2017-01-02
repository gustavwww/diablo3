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
    
    var acc: Account!
    var loadingView: LoadingView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadingView = LoadingView()
        
        
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? HeroVC {
            
            destination.acc = self.acc
            
            
        }
        
    }

    @IBAction func searchPressed(_ sender: Any) {
        //Download data and check if valid.
        
        
        if textField.text == nil || textField.text == "" {
            
            return
        }
        loadingView.setupView(view: self.view, msg: .loading)
        
        
        self.acc = Account()
        Constants.sharedInstance.initRequest(battleTag: textField.text!)
        
        textField.text = ""
        
        self.acc.downloadData {
            
            if self.acc.isValid == false {
                self.loadingView.removeView()
                
                if let textBox = self.textField as? StartTextField {
                    
                    textBox.shake()
                    
                }
                return
            }
            
            self.loadingView.removeView()
            self.performSegue(withIdentifier: "CharacterTable", sender: nil)
            
        }
        
    }


}

