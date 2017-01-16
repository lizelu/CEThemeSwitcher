//
//  ThemeManager.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/12.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
enum ThemeType {
    case whiteTheme
    case blackTheme
    case greenTheme
    case redTheme
    case yellowTheme
    case blueTheme
    
    var theme: ThemeProtocol {
        get {
            switch self {
            case .whiteTheme:
                return WhiteTheme()
            case .blackTheme:
                return BlackTheme()
            case .greenTheme:
                return GreenTheme()
            case .redTheme:
                return RedTheme()
            case .yellowTheme:
                return YellowTheme()
            case .blueTheme:
                return BlueTheme()
           
            }
        }
    }
}
let ThemeNotifacationName = NSNotification.Name("keyThemeNotifacation")

class ThemeManager: NSObject {
    var backgroundColor: UIColor {
        get {
            return theme.backgroundColor
        }
    }
    
    var titleTextColor: UIColor {
        get {
            return theme.titleTextColor
        }
    }
    
    var detailTextColor: UIColor {
        get {
            return theme.detailTextColor
        }
    }
    var theme: ThemeProtocol = WhiteTheme()     //默认是WhiteTheme
    
    var notification: NSNotification!
    
    
    static var manager: ThemeManager? = nil
    static func shareInstance() -> ThemeManager {
        if manager == nil {
            manager = ThemeManager()
        }
        return manager!
    }
    private override init() {
    }
    
    private func switcherTheme(type: ThemeType){
        self.theme = type.theme
        NotificationCenter.default.post(name: ThemeNotifacationName, object: self.theme)
    }
    
    static func switcherTheme(type: ThemeType){
        ThemeManager.shareInstance().switcherTheme(type: type)
    }
    
    static func themeUpdate() {
        NotificationCenter.default.post(name: ThemeNotifacationName, object: ThemeManager.shareInstance().theme)
    }
}
