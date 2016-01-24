//
//  NSDate.swift
//  merchcat
//
//  Created by Jeremy Fox on 2/23/15.
//  Copyright (c) 2015 Randy Arrowood. All rights reserved.
//

import Foundation

extension NSDate {
    
    private struct Static {
        static var formatter: NSDateFormatter = {
            let formatter = NSDateFormatter()
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.S'Z'"
            return formatter
            }()
    }
    
    func toRFC3339String() -> String {
        let formatter = Static.formatter
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.S'Z'"
        return formatter.stringFromDate(self)
    }
    
    class func dateFromRFC3339String(string: String) -> NSDate? {
        return dateFromString(string, withFormat: "yyyy-MM-dd'T'HH:mm:ss.S'Z'")
    }
    
    func toPrettyString() -> String {
        let formatter = Static.formatter
        formatter.dateFormat = "E MMM dd, yyyy 'at' h:mm a"
        return formatter.stringFromDate(self)
    }
    
    func toShortPrettyString() -> String {
        let formatter = Static.formatter
        formatter.dateFormat = "MM/dd/yy"
        return formatter.stringFromDate(self)
    }
    
    class func dateFromString(dateString: String, withFormat format: String) -> NSDate? {
        let formatter = Static.formatter
        formatter.dateFormat = format
        return formatter.dateFromString(dateString)
    }
    
    func beginningOfDay() -> NSDate {
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Year, .Month, .Day], fromDate: self)
        return calendar.dateFromComponents(components)!
    }
    
    func endOfDay() -> NSDate {
        let components = NSDateComponents()
        components.day = 1
        var date = NSCalendar.currentCalendar().dateByAddingComponents(components, toDate: self.beginningOfDay(), options: [])!
        date = date.dateByAddingTimeInterval(-1)
        return date
    }
    
}