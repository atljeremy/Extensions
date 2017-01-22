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
    public static func IS_568_SCREEN() -> Bool {
        return UIScreen.main.bounds.size.height == 568
    }
    
    public static func IS_IPHONE() -> Bool {
        return (UIDevice.current.model as NSString).range(of: "iPhone").location != NSNotFound
    }
    
    public static func IS_IPOD() -> Bool {
        return ((UIDevice.current.model as NSString).range(of: "iPod").location != NSNotFound)
    }
    
    public static func IS_IPAD() -> Bool {
        return ((UIDevice.current.model as NSString).range(of: "iPad").location != NSNotFound)
    }
    
    public static func IS_IOS7_OR_GREATER() -> Bool {
        return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO("7")
    }
    
    public static func IS_IOS8_OR_GREATER() -> Bool {
        return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO("8")
    }
    
    public static func SYSTEM_VERSION_EQUAL_TO(_ v: String) -> Bool {
        return UIDevice.current.systemVersion.compare(v, options: .numeric, range: nil, locale: nil) == .orderedSame
    }
    
    public static func SYSTEM_VERSION_GREATER_THAN(_ v: String) -> Bool {
        return UIDevice.current.systemVersion.compare(v, options: .numeric, range: nil, locale: nil) == .orderedDescending
    }
    
    public static func SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(_ v: String) -> Bool {
        return UIDevice.current.systemVersion.compare(v, options: .numeric, range: nil, locale: nil) != .orderedAscending
    }
    
    public static func SYSTEM_VERSION_LESS_THAN(_ v: String) -> Bool {
        return UIDevice.current.systemVersion.compare(v, options: .numeric, range: nil, locale: nil) == .orderedAscending
    }
    
    public static func SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(_ v: String) -> Bool {
        return UIDevice.current.systemVersion.compare(v, options: .numeric, range: nil, locale: nil) != .orderedDescending
    }
}