//
//  Account.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2016-12-27.
//  Copyright © 2016 Gustav Wadström. All rights reserved.
//

import Foundation
import Alamofire

class Account {
    
    private var _name: String!
    private var _guildName: String!
    
    private var _paraSea: Int!
    private var _paraSeaHard: Int!
    
    var name: String {
        if _name == nil {
            _name = ""
        }
        
        return _name
    }
    
    var guildName: String {
        if _guildName == nil {
            _guildName = ""
        }
        
        return _guildName
    }
    
    var paragonSeason: Int {
        if _paraSea == nil {
            _paraSea = 0
        }
        
        return _paraSea
    }
    
    var paragonSeasonHardCore: Int {
        if _paraSeaHard == nil {
            _paraSeaHard = 0
        }
        
        return _paraSeaHard
    }
    
    var characters = [Character]()
    
    var isValid = false
    var reason: String?
    
    //Downloading data.
    func downloadData(complete: @escaping downloadComplete) {
        
        let constants = Constants.sharedInstance
        
        Alamofire.request(constants.URL).responseJSON { response in
            
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let reason = dict["reason"] as? String {
                    //Error finding accout..
                    
                    self.isValid = false
                    self.reason = reason
                    
                    complete()
                    return
                }
                //Account has been found...
                
                self.isValid = true
                
                if let tag = dict["battleTag"] as? String {
                    
                    self._name = tag
                    
                }
                
                if let gName = dict["guildName"] as? String {
                    
                    self._guildName = gName
                    
                }
                
                if let pSea = dict["paragonLevelSeason"] as? Int {
                    
                    self._paraSea = pSea
                    
                }
                
                if let pSeaHard = dict["paragonLevelSeasonHardcore"] as? Int {
                    
                    self._paraSeaHard = pSeaHard
                    
                }
                
                //Getting characters
                
                if let heroes = dict["heroes"] as? [Dictionary<String, AnyObject>] {
                    
                    for hero in heroes {
                        
                        let char = Character()
                        
                        if let id = hero["id"] as? Int {
                            char.id = id
                        }
                        
                        if let name = hero["name"] as? String {
                            char.name = name
                        }
                        
                        if let clas = hero["class"] as? String {
                            char.clas = clas
                        }
                        
                        if let gender = hero["gender"] as? Int {
                            char.gender = gender
                        }
                        
                        if let level = hero["level"] as? Int {
                            char.level = level
                        }
                        
                        if let hardcore = hero["hardcore"] as? Bool {
                            char.isHardCore = hardcore
                        }
                        
                        if let seasonal = hero["seasonal"] as? Bool {
                            char.isSeasonal = seasonal
                        }
                        
                        
                        if let kills = hero["kills"] as? Dictionary<String, Int> {
                            
                            if let elites = kills["elites"] {
                                
                                char.elitesKilles = elites
                            }
                            
                        }
                        
                     self.characters.append(char)
                    
                    }
                    
                }
                
                
            }
         complete()
        }
        
    }
    
}
