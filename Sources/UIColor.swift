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
    
    class func hsb(_ h: CGFloat, _ s: CGFloat, _ b: CGFloat) -> UIColor {
        return UIColor(hue: h, saturation: s, brightness: b, alpha: 1.0)
    }
    
    class func flatBlackColor() -> UIColor {
        return hsb(0, 0, 17)
    }
    
    class func flatBlueColor() -> UIColor {
        return hsb(224, 50, 63)
    }
    
    class func flatBrownColor() -> UIColor {
        return hsb(24, 45, 37)
    }
    
    class func flatCoffeeColor() -> UIColor {
        return hsb(25, 31, 64)
    }
    
    class func flatForestGreenColor() -> UIColor {
        return hsb(138, 45, 37)
    }
    
    class func flatGrayColor() -> UIColor {
        return hsb(184, 10, 65)
    }
    
    class func flatGreenColor() -> UIColor {
        return hsb(145, 77, 80)
    }
    
    class func flatLimeColor() -> UIColor {
        return hsb(74, 70, 78)
    }
    
    class func flatMagentaColor() -> UIColor {
        return hsb(283, 51, 71)
    }
    
    class func flatMaroonColor() -> UIColor {
        return hsb(5, 65, 47)
    }
    
    class func flatMintColor() -> UIColor {
        return hsb(168, 86, 74)
    }
    
    class func flatNavyBlueColor() -> UIColor {
        return hsb(210, 45, 37)
    }
    
    class func flatOrangeColor() -> UIColor {
        return hsb(28, 85, 90)
    }
    
    class func flatPinkColor() -> UIColor {
        return hsb(324, 49, 96)
    }
    
    class func flatPlumColor() -> UIColor {
        return hsb(300, 45, 37)
    }
    
    class func flatPowderBlueColor() -> UIColor {
        return hsb(222, 24, 95)
    }
    
    class func flatPurpleColor() -> UIColor {
        return hsb(253, 52, 77)
    }
    
    class func flatRedColor() -> UIColor {
        return hsb(6, 74, 91)
    }
    
    class func flatSandColor() -> UIColor {
        return hsb(42, 25, 94)
    }
    
    class func flatSkyBlueColor() -> UIColor {
        return hsb(204, 76, 86)
    }
    
    class func flatTealColor() -> UIColor {
        return hsb(195, 55, 51)
    }
    
    class func flatWatermelonColor() -> UIColor {
        return hsb(356, 53, 94)
    }
    
    class func flatWhiteColor() -> UIColor {
        return hsb(192, 2, 95)
    }
    
    class func flatYellowColor() -> UIColor {
        return hsb(48, 99, 100)
    }
    
    class func flatBlackColorDark() -> UIColor {
        return hsb(0, 0, 15)
    }
    
    class func flatBlueColorDark() -> UIColor {
        return hsb(224, 56, 51)
    }
    
    class func flatBrownColorDark() -> UIColor {
        return hsb(25, 45, 31)
    }
    
    class func flatCoffeeColorDark() -> UIColor {
        return hsb(25, 34, 56)
    }
    
    class func flatForestGreenColorDark() -> UIColor {
        return hsb(135, 44, 31)
    }
    
    class func flatGrayColorDark() -> UIColor {
        return hsb(184, 10, 55)
    }
    
    class func flatGreenColorDark() -> UIColor {
        return hsb(145, 78, 68)
    }
    
    class func flatLimeColorDark() -> UIColor {
        return hsb(74, 81, 69)
    }
    
    class func flatMagentaColorDark() -> UIColor {
        return hsb(282, 61, 68)
    }
    
    class func flatMaroonColorDark() -> UIColor {
        return hsb(4, 68, 40)
    }
    
    class func flatMintColorDark() -> UIColor {
        return hsb(168, 86, 63)
    }
    
    class func flatNavyBlueColorDark() -> UIColor {
        return hsb(210, 45, 31)
    }
    
    class func flatOrangeColorDark() -> UIColor {
        return hsb(24, 100, 83)
    }
    
    class func flatPinkColorDark() -> UIColor {
        return hsb(327, 57, 83)
    }
    
    class func flatPlumColorDark() -> UIColor {
        return hsb(300, 46, 31)
    }
    
    class func flatPowderBlueColorDark() -> UIColor {
        return hsb(222, 28, 84)
    }
    
    class func flatPurpleColorDark() -> UIColor {
        return hsb(253, 56, 64)
    }
    
    class func flatRedColorDark() -> UIColor {
        return hsb(6, 78, 75)
    }
    
    class func flatSandColorDark() -> UIColor {
        return hsb(42, 30, 84)
    }
    
    class func flatSkyBlueColorDark() -> UIColor {
        return hsb(204, 78, 73)
    }
    
    class func flatTealColorDark() -> UIColor {
        return hsb(196, 54, 45)
    }
    
    class func flatWatermelonColorDark() -> UIColor {
        return hsb(358, 61, 85)
    }
    
    class func flatWhiteColorDark() -> UIColor {
        return hsb(204, 5, 78)
    }
    
    class func flatYellowColorDark() -> UIColor {
        return hsb(40, 100, 100)
    }
    
}
