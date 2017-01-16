//
//  Theme2.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/13.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
class GreenTheme: ThemeProtocol {
    var backgroundColor: UIColor {
        get {
            return UIColor.colorWithHex(0xB3FFAA)
        }
    }
    
    var titleTextColor: UIColor {
        get {
            return UIColor.brown
        }
    }
    
    var detailTextColor: UIColor {
        get {
            return UIColor.black
        }
    }
}
