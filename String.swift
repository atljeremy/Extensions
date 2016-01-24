//
//  Swift.swift
//  merchcat
//
//  Created by Jeremy Fox on 5/20/15.
//  Copyright (c) 2015 Randy Arrowood. All rights reserved.
//

extension String {
    func contains(string: String) -> Bool {
        return rangeOfString(string) != nil
    }
}

extension Optional {
    func contains(string: String) -> Bool {
        switch self {
        case .None:
            return false
        case let .Some(value):
            if value is Int {
                return "\((value as! Int))".rangeOfString(string) != nil
            } else if value is String {
                return (value as! String).rangeOfString(string) != nil
            }
        }
        
        return false
    }
    
    func contains(int: Int) -> Bool {
        return contains("\(int)")
    }
}