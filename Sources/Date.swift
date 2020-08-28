/*
* Date
*
* Created by Jeremy Fox on 3/1/16.
* Copyright (c) 2016 Jeremy Fox. All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*/

import Foundation

public extension Date {
    
    static var formatter: DateFormatter = {
       let formatter = DateFormatter()
       formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.S'Z'"
       return formatter
   }()
    
    func toRFC3339String() -> String {
        let formatter = Date.formatter
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.S'Z'"
        return formatter.string(from: self)
    }
    
    static func dateFromRFC3339String(_ string: String) -> Date? {
        return dateFromString(string, withFormat: "yyyy-MM-dd'T'HH:mm:ss.S'Z'")
    }
    
    func toPrettyString() -> String {
        let formatter = Date.formatter
        formatter.dateFormat = "E MMM dd, yyyy 'at' h:mm a"
        return formatter.string(from: self)
    }
    
    func toShortPrettyString() -> String {
        let formatter = Date.formatter
        formatter.dateFormat = "MM/dd/yy"
        return formatter.string(from: self)
    }
    
    static func dateFromString(_ dateString: String, withFormat format: String) -> Date? {
        let formatter = Date.formatter
        formatter.dateFormat = format
        return formatter.date(from: dateString)
    }
    
    func beginningOfDay() -> Date {
        let calendar = Calendar.current
        let components = (calendar as NSCalendar).components([.year, .month, .day], from: self)
        return calendar.date(from: components)!
    }
    
    func endOfDay() -> Date {
        var components = DateComponents()
        components.day = 1
        var date = (Calendar.current as NSCalendar).date(byAdding: components, to: self.beginningOfDay(), options: [])!
        date = date.addingTimeInterval(-1)
        return date
    }
    
}
