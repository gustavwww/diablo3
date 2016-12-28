//
//  HeroVC.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2016-12-27.
//  Copyright © 2016 Gustav Wadström. All rights reserved.
//

import UIKit

class HeroVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var topLbl: UILabel!
    
    
    var acc: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        topLbl.text = acc.name
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CharCell", for: indexPath) as? CharCell {
            
            
            cell.configureCell(char: acc.characters[indexPath.row])
            
            return cell
        }
        
        return CharCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return acc.characters.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let table = tableView.cellForRow(at: indexPath) as? CharCell {
            
            performSegue(withIdentifier: "CharacterInfo", sender: table)
            
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? CharInfoVC {
            
            if let table = sender as? CharCell {
                
                destination.char = table.char
                
            }
            
            
        }
        
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    
    

}
