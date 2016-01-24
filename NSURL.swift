//
//  NSURL.swift
//  merchcat
//
//  Created by Jeremy Fox on 8/13/15.
//  Copyright (c) 2015 Randy Arrowood. All rights reserved.
//

import Foundation

extension NSURL {
    
    typealias Params = [String: AnyObject]
    
    func paramsDictonary() -> Params {
        var params = Params()
        if let urlParams = query {
            let splitParams = urlParams.characters.split { $0 == "&" }.map { String($0) }
            for param in splitParams {
                let paramKVP = param.characters.split { $0 == "=" }.map { String($0) }
                if paramKVP.count > 1 {
                    params[paramKVP[0]] = paramKVP[1]
                }
            }
        }
        
        return params
    }
    
}
