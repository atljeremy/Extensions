/*
* UIColor
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

/**
* These colors were borrowed from the Chameleon library.
* The colors are awesome but I didn't want the entire library.
* https://github.com/VAlexander/Chameleon/blob/master/Chameleon/UIColor%2BChameleon.m
*/

public extension UIColor {
    
    static func hsb(_ h: CGFloat, _ s: CGFloat, _ b: CGFloat) -> UIColor {
        UIColor(hue: h, saturation: s, brightness: b, alpha: 1.0)
    }
    
    static var flatBlackColor: UIColor {
        hsb(0, 0, 17)
    }
    
    static var flatBlueColor: UIColor {
        hsb(224, 50, 63)
    }
    
    static var flatBrownColor: UIColor {
        hsb(24, 45, 37)
    }
    
    static var flatCoffeeColor: UIColor {
        hsb(25, 31, 64)
    }
    
    static var flatForestGreenColor: UIColor {
        hsb(138, 45, 37)
    }
    
    static var flatGrayColor: UIColor {
        hsb(184, 10, 65)
    }
    
    static var flatGreenColor: UIColor {
        hsb(145, 77, 80)
    }
    
    static var flatLimeColor: UIColor {
        hsb(74, 70, 78)
    }
    
    static var flatMagentaColor: UIColor {
        hsb(283, 51, 71)
    }
    
    static var flatMaroonColor: UIColor {
        hsb(5, 65, 47)
    }
    
    static var flatMintColor: UIColor {
        hsb(168, 86, 74)
    }
    
    static var flatNavyBlueColor: UIColor {
        hsb(210, 45, 37)
    }
    
    static var flatOrangeColor: UIColor {
        hsb(28, 85, 90)
    }
    
    static var flatPinkColor: UIColor {
        hsb(324, 49, 96)
    }
    
    static var flatPlumColor: UIColor {
        hsb(300, 45, 37)
    }
    
    static var flatPowderBlueColor: UIColor {
        hsb(222, 24, 95)
    }
    
    static var flatPurpleColor: UIColor {
        hsb(253, 52, 77)
    }
    
    static var flatRedColor: UIColor {
        hsb(6, 74, 91)
    }
    
    static var flatSandColor: UIColor {
        hsb(42, 25, 94)
    }
    
    static var flatSkyBlueColor: UIColor {
        hsb(204, 76, 86)
    }
    
    static var flatTealColor: UIColor {
        hsb(195, 55, 51)
    }
    
    static var flatWatermelonColor: UIColor {
        hsb(356, 53, 94)
    }
    
    static var flatWhiteColor: UIColor {
        hsb(192, 2, 95)
    }
    
    static var flatYellowColor: UIColor {
        hsb(48, 99, 100)
    }
    
    static var flatBlackColorDark: UIColor {
        hsb(0, 0, 15)
    }
    
    static var flatBlueColorDark: UIColor {
        hsb(224, 56, 51)
    }
    
    static var flatBrownColorDark: UIColor {
        hsb(25, 45, 31)
    }
    
    static var flatCoffeeColorDark: UIColor {
        hsb(25, 34, 56)
    }
    
    static var flatForestGreenColorDark: UIColor {
        hsb(135, 44, 31)
    }
    
    static var flatGrayColorDark: UIColor {
        hsb(184, 10, 55)
    }
    
    static var flatGreenColorDark: UIColor {
        hsb(145, 78, 68)
    }
    
    static var flatLimeColorDark: UIColor {
        hsb(74, 81, 69)
    }
    
    static var flatMagentaColorDark: UIColor {
        hsb(282, 61, 68)
    }
    
    static var flatMaroonColorDark: UIColor {
        hsb(4, 68, 40)
    }
    
    static var flatMintColorDark: UIColor {
        hsb(168, 86, 63)
    }
    
    static var flatNavyBlueColorDark: UIColor {
        hsb(210, 45, 31)
    }
    
    static var flatOrangeColorDark: UIColor {
        hsb(24, 100, 83)
    }
    
    static var flatPinkColorDark: UIColor {
        hsb(327, 57, 83)
    }
    
    static var flatPlumColorDark: UIColor {
        hsb(300, 46, 31)
    }
    
    static var flatPowderBlueColorDark: UIColor {
        hsb(222, 28, 84)
    }
    
    static var flatPurpleColorDark: UIColor {
        hsb(253, 56, 64)
    }
    
    static var flatRedColorDark: UIColor {
        hsb(6, 78, 75)
    }
    
    static var flatSandColorDark: UIColor {
        hsb(42, 30, 84)
    }
    
    static var flatSkyBlueColorDark: UIColor {
        hsb(204, 78, 73)
    }
    
    static var flatTealColorDark: UIColor {
        hsb(196, 54, 45)
    }
    
    static var flatWatermelonColorDark: UIColor {
        hsb(358, 61, 85)
    }
    
    static var flatWhiteColorDark: UIColor {
        hsb(204, 5, 78)
    }
    
    static var flatYellowColorDark: UIColor {
        hsb(40, 100, 100)
    }
    
}
