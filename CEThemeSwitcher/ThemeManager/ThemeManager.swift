//
//  ThemeManager.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/12.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
enum ThemeType {
    case THEME1
    case THEME2
    
    var theme: ThemeProtocol {
        get {
            switch self {
            case .THEME1:
                return Theme1()
            case .THEME2:
                return Theme2()
            }
        }
    }
}

class ThemeManager: NSObject {
//    var backgroundColor: UIColor {
//        get {
//            return theme.backgroundColor
//        }
//    }
//    
//    var titleTextColor: UIColor {
//        get {
//            return theme.titleTextColor
//        }
//    }
//    
//    var detailTextColor: UIColor {
//        get {
//            return theme.detailTextColor
//        }
//    }

    var theme: ThemeProtocol = Theme1()     //默认是Theme1
    
    static var manager: ThemeManager? = nil
    static func shareInstance() -> ThemeManager {
        if manager == nil {
            manager = ThemeManager()
        }
        return manager!
    }
    private override init() {}
    
    func switcherTheme(type: ThemeType){
        self.theme = type.theme
    }
}
