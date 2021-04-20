//
//  ColorHelper.swift
//  darkModeTest
//
//  Created by DD Dev on 2021/04/20.
//

import Foundation
import UIKit

class ColorHelper {
    
    
    static func getMainThemeColor() -> UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    // Return color for Dark Mode
                    return .yellow
                } else {
                    // Return color for Light Mode
                    return .orange
                }
            }
        } else {
            // Return fallback color for iOS 12 and lower
            return .orange
        }
        
    }
    
}
