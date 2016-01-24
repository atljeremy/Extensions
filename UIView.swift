//
//  UIView.swift
//  Kidsay
//
//  Created by Jeremy Fox on 12/19/14.
//  Copyright (c) 2014 Jeremy Fox. All rights reserved.
//

import UIKit

extension UIView {
    
    func makeRound() {
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
    
    class func loadFromNibNamed(nibNamed: String, bundle : NSBundle? = nil) -> UIView? {
        return UINib(nibName: nibNamed, bundle: bundle).instantiateWithOwner(nil, options: nil).first as? UIView
    }
    
}