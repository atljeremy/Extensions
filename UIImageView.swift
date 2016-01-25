//
//  UIImageView.swift
//  merchcat
//
//  Created by Jeremy Fox on 5/15/15.
//  Copyright (c) 2015 Randy Arrowood. All rights reserved.
//

import UIKit

private class DownloadQueue {
    
    private var queue = [String: Download]()

    private class var _sharedQeueue: DownloadQueue {
        struct Static {
            static let instance = DownloadQueue()
        }
        return Static.instance
    }
    
    class func sharedQeueue() -> DownloadQueue {
        return _sharedQeueue
    }
    
    func enqueue(download: Download, forImageURL imageURL: String) {
        queue[imageURL] = download
    }
    
    func removeDownloadForImageURL(imageURL: String) {
        if let _imageURL = imageURL as String? {
            queue.removeValueForKey(_imageURL)
        }
    }
    
    func downloadForImageURL(imageURL: String) -> Download? {
        return queue[imageURL]
    }
}

private struct Download {
    var task: NSURLSessionDataTask?
}

extension UIImageView {
    
    func loadImageAtURL(imageURL: String, withDefaultImage defaultImage: UIImage?) {
        loadImageAtURL(imageURL, withDefaultImage: defaultImage, completion: nil)
    }
    
    func loadImageAtURL(imageURL: String, withDefaultImage defaultImage: UIImage?, completion: (() -> Void)?) {
        if let _defaultImage = defaultImage {
            image = _defaultImage
        }
        let request = NSURLRequest(URL: NSURL(string: imageURL)!)
        let downloadTask = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
            if let _data = data {
                dispatch_async(dispatch_get_main_queue()) {
                    self.image = nil
                    self.image = UIImage(data: _data)
                    completion?()
                }
            }
            DownloadQueue.sharedQeueue().removeDownloadForImageURL(imageURL + "\(self.hash)")
        }
        DownloadQueue.sharedQeueue().enqueue(Download(task: downloadTask), forImageURL: imageURL + "\(hash)")
        downloadTask.resume()
    }
    
    func cancelImageLoadForImageURL(imageURL: String) {
        if let _download = DownloadQueue.sharedQeueue().downloadForImageURL(imageURL + "\(hash)") {
            _download.task?.cancel()
        }
        DownloadQueue.sharedQeueue().removeDownloadForImageURL(imageURL + "\(hash)")
    }
    
}
