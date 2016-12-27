//
//  Character.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2016-12-27.
//  Copyright © 2016 Gustav Wadström. All rights reserved.
//

import Foundation

class Character {
    
    private var _name: String!
    private var _id: Int!
    
    private var _clas: String!
    private var _gender: Int!
    private var _level: Int!
    private var _elitesKilled: Int!
    
    var name: String {
        get {
        return _name
        } set {
            _name = newValue
        }
    }
    
    var id: Int {
        get {
        return _id
        } set {
            _id = newValue
        }
    }
    
    var clas: String {
        get {
            return _clas
        } set {
            _clas = newValue
        }
    }
    
    var gender: Int {
        get {
            return _gender
        } set {
            _gender = newValue
        }
    }
    
    var level: Int {
        get {
            return _level
        } set {
            _level = newValue
        }
    }
    
    var elitesKilles: Int {
        get {
            return _elitesKilled
        } set {
            _elitesKilled = newValue
        }
    }
    
    var isDead: Bool!
    var Seasonal: Bool!
    var isHardCore: Bool!
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
