//
//  Constants.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2016-12-27.
//  Copyright © 2016 Gustav Wadström. All rights reserved.
//

import Foundation


typealias downloadComplete = () -> ()

class Constants {
    
    static let sharedInstance = Constants()
    
    var battleTag: String!
    
    var URL: String!
    
    func initRequest(battleTag: String) {
        
        self.battleTag = battleTag.replacingOccurrences(of: "#", with: "%23")
        
        URL = "https://eu.api.battle.net/d3/profile/" + self.battleTag + "/?locale=en_GB&apikey=v5p92v64hfnd8nmy8vjtzs2429ry5nmc"
        
    }
    
}
