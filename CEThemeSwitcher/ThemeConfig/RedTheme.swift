//
//  Theme2.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/13.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
class RedTheme: ThemeProtocol {
    var backgroundColor: UIColor {
        get {
            return UIColor.colorWithHex(0xD62608)
        }
    }
    
    var titleTextColor: UIColor {
        get {
            return UIColor.white
        }
    }
    
    var detailTextColor: UIColor {
        get {
            return UIColor.yellow
        }
    }
}
