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
        
        return _name
    }
    
    var guildName: String {
        
        return _guildName
    }
    
    var paragonSeason: Int {
        
        return _paraSea
    }
    
    var paragonSeasonHardCore: Int {
        
        return _paraSeaHard
    }
    
    var characters = [Character]()
    
    var isValid = false
    
    //Downloading data.
    func downloadData(complete: @escaping downloadComplete) {
        
        let constants = Constants.sharedInstance
        
        Alamofire.request(constants.URL).responseJSON { response in
            
            let result = response.result
            
            
            
        }
        
    }
    
}
