//
//  UIDevice.swift
//  merchcat
//
//  Created by Jeremy Fox on 3/30/15.
//  Copyright (c) 2015 Randy Arrowood. All rights reserved.
//

import UIKit

func isiPad() -> Bool {
    return UIDevice.currentDevice().userInterfaceIdiom == .Pad
}