/*
* UIDevice
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

import UIKit

public extension UIDevice {
    static func is568Screen() -> Bool {
        return UIScreen.main.bounds.size.height == 568
    }
    
    static func isiPhone() -> Bool {
        return (UIDevice.current.model as NSString).range(of: "iPhone").location != NSNotFound
    }
    
    static func isiPod() -> Bool {
        return ((UIDevice.current.model as NSString).range(of: "iPod").location != NSNotFound)
    }
    
    static func isiPad() -> Bool {
        return ((UIDevice.current.model as NSString).range(of: "iPad").location != NSNotFound)
    }
    
    static func isiOS7OrGreater() -> Bool {
        return isSystemVersionsGreaterThanOrEqualTo("7")
    }
    
    static func isiOS8OrGreater() -> Bool {
        return isSystemVersionsGreaterThanOrEqualTo("8")
    }
    
    static func isSystemVersionEqualTo(_ v: String) -> Bool {
        return UIDevice.current.systemVersion.compare(v, options: .numeric, range: nil, locale: nil) == .orderedSame
    }
    
    static func isSystemVersionGreaterThan(_ v: String) -> Bool {
        return UIDevice.current.systemVersion.compare(v, options: .numeric, range: nil, locale: nil) == .orderedDescending
    }
    
    static func isSystemVersionsGreaterThanOrEqualTo(_ v: String) -> Bool {
        return UIDevice.current.systemVersion.compare(v, options: .numeric, range: nil, locale: nil) != .orderedAscending
    }
    
    static func isSystemVersionLessThan(_ v: String) -> Bool {
        return UIDevice.current.systemVersion.compare(v, options: .numeric, range: nil, locale: nil) == .orderedAscending
    }
    
    static func isSystemVersionLessThenOrEqualTo(_ v: String) -> Bool {
        return UIDevice.current.systemVersion.compare(v, options: .numeric, range: nil, locale: nil) != .orderedDescending
    }
}
