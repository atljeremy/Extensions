//
//  UIImage.swift
//  merchcat
//
//  Created by Jeremy Fox on 5/15/15.
//  Copyright (c) 2015 Randy Arrowood. All rights reserved.
//

import UIKit

extension UIImage {
    
    func scaleToSize(size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        drawInRect(CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
    func halfSize() -> UIImage {
        return scaleToSize(CGSize(width: size.width / 2, height: size.height / 2))
    }
    
}
