/*
* UIImage
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

public extension UIImage {
    
    @objc func imageByScalingToSize(_ size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image!
    }
    
    @objc func imageByScalingToHalfSize() -> UIImage {
        return imageByScalingToSize(CGSize(width: size.width / 2, height: size.height / 2))
    }
    
    @objc func imageByCroppingToRect(rect: CGRect) -> UIImage? {
        guard let _cgImage = cgImage else {
            return nil
        }
        if let image = _cgImage.cropping(to: rect) {
            return UIImage(cgImage: image)
        } else if let image = (self.ciImage)?.cropped(to: rect) {
            return UIImage(ciImage: image)
        }
        
        return nil
    }
    
}
