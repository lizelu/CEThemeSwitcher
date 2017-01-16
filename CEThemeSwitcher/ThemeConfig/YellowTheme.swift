//
//  Theme2.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/13.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
class YellowTheme: ThemeProtocol {
    var backgroundColor: UIColor {
        get {
            return UIColor.colorWithHex(0xF1FFB3)
        }
    }
    
    var titleTextColor: UIColor {
        get {
            return UIColor.red
        }
    }
    
    var detailTextColor: UIColor {
        get {
            return UIColor.lightGray
        }
    }
}
