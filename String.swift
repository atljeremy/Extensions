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
    
    subscript(i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
    
    subscript(i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript(r: Range<Int>) -> String {
        let start = startIndex.advancedBy(r.startIndex)
        let end = start.advancedBy(r.endIndex - r.startIndex)
        return self[Range(start: start, end: end)]
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