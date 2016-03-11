/*
* String
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