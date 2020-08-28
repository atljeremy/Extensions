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
    
    @objc static func hsb(_ h: CGFloat, _ s: CGFloat, _ b: CGFloat) -> UIColor {
        UIColor(hue: h, saturation: s, brightness: b, alpha: 1.0)
    }
    
    @objc static var flatBlackColor: UIColor {
        hsb(0, 0, 17)
    }
    
    @objc static var flatBlueColor: UIColor {
        hsb(224, 50, 63)
    }
    
    @objc static var flatBrownColor: UIColor {
        hsb(24, 45, 37)
    }
    
    @objc static var flatCoffeeColor: UIColor {
        hsb(25, 31, 64)
    }
    
    @objc static var flatForestGreenColor: UIColor {
        hsb(138, 45, 37)
    }
    
    @objc static var flatGrayColor: UIColor {
        hsb(184, 10, 65)
    }
    
    @objc static var flatGreenColor: UIColor {
        hsb(145, 77, 80)
    }
    
    @objc static var flatLimeColor: UIColor {
        hsb(74, 70, 78)
    }
    
    @objc static var flatMagentaColor: UIColor {
        hsb(283, 51, 71)
    }
    
    @objc static var flatMaroonColor: UIColor {
        hsb(5, 65, 47)
    }
    
    @objc static var flatMintColor: UIColor {
        hsb(168, 86, 74)
    }
    
    @objc static var flatNavyBlueColor: UIColor {
        hsb(210, 45, 37)
    }
    
    @objc static var flatOrangeColor: UIColor {
        hsb(28, 85, 90)
    }
    
    @objc static var flatPinkColor: UIColor {
        hsb(324, 49, 96)
    }
    
    @objc static var flatPlumColor: UIColor {
        hsb(300, 45, 37)
    }
    
    @objc static var flatPowderBlueColor: UIColor {
        hsb(222, 24, 95)
    }
    
    @objc static var flatPurpleColor: UIColor {
        hsb(253, 52, 77)
    }
    
    @objc static var flatRedColor: UIColor {
        hsb(6, 74, 91)
    }
    
    @objc static var flatSandColor: UIColor {
        hsb(42, 25, 94)
    }
    
    @objc static var flatSkyBlueColor: UIColor {
        hsb(204, 76, 86)
    }
    
    @objc static var flatTealColor: UIColor {
        hsb(195, 55, 51)
    }
    
    @objc static var flatWatermelonColor: UIColor {
        hsb(356, 53, 94)
    }
    
    @objc static var flatWhiteColor: UIColor {
        hsb(192, 2, 95)
    }
    
    @objc static var flatYellowColor: UIColor {
        hsb(48, 99, 100)
    }
    
    @objc static var flatBlackColorDark: UIColor {
        hsb(0, 0, 15)
    }
    
    @objc static var flatBlueColorDark: UIColor {
        hsb(224, 56, 51)
    }
    
    @objc static var flatBrownColorDark: UIColor {
        hsb(25, 45, 31)
    }
    
    @objc static var flatCoffeeColorDark: UIColor {
        hsb(25, 34, 56)
    }
    
    @objc static var flatForestGreenColorDark: UIColor {
        hsb(135, 44, 31)
    }
    
    @objc static var flatGrayColorDark: UIColor {
        hsb(184, 10, 55)
    }
    
    @objc static var flatGreenColorDark: UIColor {
        hsb(145, 78, 68)
    }
    
    @objc static var flatLimeColorDark: UIColor {
        hsb(74, 81, 69)
    }
    
    @objc static var flatMagentaColorDark: UIColor {
        hsb(282, 61, 68)
    }
    
    @objc static var flatMaroonColorDark: UIColor {
        hsb(4, 68, 40)
    }
    
    @objc static var flatMintColorDark: UIColor {
        hsb(168, 86, 63)
    }
    
    @objc static var flatNavyBlueColorDark: UIColor {
        hsb(210, 45, 31)
    }
    
    @objc static var flatOrangeColorDark: UIColor {
        hsb(24, 100, 83)
    }
    
    @objc static var flatPinkColorDark: UIColor {
        hsb(327, 57, 83)
    }
    
    @objc static var flatPlumColorDark: UIColor {
        hsb(300, 46, 31)
    }
    
    @objc static var flatPowderBlueColorDark: UIColor {
        hsb(222, 28, 84)
    }
    
    @objc static var flatPurpleColorDark: UIColor {
        hsb(253, 56, 64)
    }
    
    @objc static var flatRedColorDark: UIColor {
        hsb(6, 78, 75)
    }
    
    @objc static var flatSandColorDark: UIColor {
        hsb(42, 30, 84)
    }
    
    @objc static var flatSkyBlueColorDark: UIColor {
        hsb(204, 78, 73)
    }
    
    @objc static var flatTealColorDark: UIColor {
        hsb(196, 54, 45)
    }
    
    @objc static var flatWatermelonColorDark: UIColor {
        hsb(358, 61, 85)
    }
    
    @objc static var flatWhiteColorDark: UIColor {
        hsb(204, 5, 78)
    }
    
    @objc static var flatYellowColorDark: UIColor {
        hsb(40, 100, 100)
    }
    
}
