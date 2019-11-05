//
//  ThemeColor.swift
//  ThemeManagerSample
//
//  Created by RC-Mac-Manish on 05/11/19.
//  Copyright © 2019 rarecrew. All rights reserved.
//

import Foundation
import UIKit

struct ThemeColorScheme {
    let light: UIColor
    let dark: UIColor
    
    func getCurrentColor() -> UIColor {
        switch GlobalConfigs.appearanceMode {
        case .light:
            return light
        case .dark:
            return dark
        default:
            assertionFailure("GlobalConfigs.appearanceMode is unknown")
            return light
        }
    }
}

// Theme related colors
struct ThemeColor {
    
    private init() { }
    static var shared = ThemeColor()
    
    let cellTitle = ThemeColorScheme(light: KColor.black, dark: KColor.white).getCurrentColor()
    
    let background = ThemeColorScheme(light: KColor.white, dark: KColor.black).getCurrentColor()
    
}
