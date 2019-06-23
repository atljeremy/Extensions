/*
* UIImageView
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

private class DownloadQueue {
    
    fileprivate var queue = [String: Download]()

    fileprivate class var _sharedQeueue: DownloadQueue {
        struct Static {
            static let instance = DownloadQueue()
        }
        return Static.instance
    }
    
    class func sharedQeueue() -> DownloadQueue {
        return _sharedQeueue
    }
    
    func enqueue(_ download: Download, forImageURL imageURL: String) {
        queue[imageURL] = download
    }
    
    func removeDownloadForImageURL(_ imageURL: String) {
        if let _imageURL = imageURL as String? {
            queue.removeValue(forKey: _imageURL)
        }
    }
    
    func downloadForImageURL(_ imageURL: String) -> Download? {
        return queue[imageURL]
    }
}

private struct Download {
    var task: URLSessionDataTask?
}

public extension UIImageView {
    
    func loadImageAtURL(_ imageURL: String, withDefaultImage defaultImage: UIImage?) {
        loadImageAtURL(imageURL, withDefaultImage: defaultImage, completion: nil)
    }
    
    func loadImageAtURL(_ imageURL: String, withDefaultImage defaultImage: UIImage?, completion: (() -> Void)?) {
        if let _defaultImage = defaultImage {
            image = _defaultImage
        }
        let request = URLRequest(url: URL(string: imageURL)!)
        let downloadTask = URLSession.shared.dataTask(with: request, completionHandler: { data, response, error in
            if let _data = data {
                DispatchQueue.main.async {
                    self.image = nil
                    self.image = UIImage(data: _data)
                    completion?()
                }
            }
            DownloadQueue.sharedQeueue().removeDownloadForImageURL(imageURL + "\(self.hash)")
        }) 
        DownloadQueue.sharedQeueue().enqueue(Download(task: downloadTask), forImageURL: imageURL + "\(hash)")
        downloadTask.resume()
    }
    
    func cancelImageLoadForImageURL(_ imageURL: String) {
        if let _download = DownloadQueue.sharedQeueue().downloadForImageURL(imageURL + "\(hash)") {
            _download.task?.cancel()
        }
        DownloadQueue.sharedQeueue().removeDownloadForImageURL(imageURL + "\(hash)")
    }
    
}
