//
//  Theme1.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/13.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
class WhiteTheme: ThemeProtocol {
    var backgroundColor: UIColor {
        get {
            return UIColor.white
        }
    }
    
    var titleTextColor: UIColor {
        get {
            return UIColor.black
        }
    }
    
    var detailTextColor: UIColor {
        get {
            return UIColor.red
        }
    }
}
