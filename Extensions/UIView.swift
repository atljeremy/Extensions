/*
* UIView
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

public extension UIView {
    
    public func makeRound() {
        self.contentMode = .ScaleAspectFill;
        self.clipsToBounds = true;
        var f = self.frame;
        let w = CGRectGetWidth(f);
        let h = CGRectGetHeight(f);
        var corner = w;
        if (h > w) { // Portrait Orientation
            f.size.height = w;
        } else if (w > h) { // Landscape Orientation
            f.size.width = h;
            corner = h;
        }
        self.frame = f;
        self.layer.cornerRadius = (corner / 2);
    }
    
    public func makeRoundWithBorder(width width: CGFloat, color: UIColor) {
        makeRound()
        layer.borderWidth = width
        layer.borderColor = color.CGColor
    }
    
    public class func loadFromNibNamed(nibNamed: String, bundle : NSBundle? = nil) -> UIView? {
        return UINib(nibName: nibNamed, bundle: bundle).instantiateWithOwner(nil, options: nil).first as? UIView
    }
    
}

public protocol UIViewLoading {}
extension UIView : UIViewLoading {}
public extension UIViewLoading where Self : UIView {
    
    public static func loadFromNib() -> Self {
        let nibName = "\(self)".characters.split{$0 == "."}.map(String.init).last!
        let bundle = NSBundle(forClass: Self.self)
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiateWithOwner(self, options: nil).first as! Self
    }
    
}