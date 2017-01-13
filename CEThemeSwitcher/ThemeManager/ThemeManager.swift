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
typealias UpdateThemeClosure = (ThemeProtocol) -> Void
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

    var updateTheme: UpdateThemeClosure!
    var theme: ThemeProtocol = Theme1()     //默认是Theme1
    
    static var manager: ThemeManager? = nil
    static func shareInstance() -> ThemeManager {
        if manager == nil {
            manager = ThemeManager()
        }
        return manager!
    }
    private override init() {}
    
    private func setUpdateTheme(updateClosure: @escaping UpdateThemeClosure) {
        self.updateTheme = updateClosure
    }
    
    private func switcherTheme(type: ThemeType){
        self.theme = type.theme
        if self.updateTheme != nil {
            self.updateTheme(type.theme)
        }
    }
    
    static func setUpdateTheme(updateClosure: @escaping UpdateThemeClosure) {
       ThemeManager.shareInstance().setUpdateTheme(updateClosure: updateClosure)
    }
    
    static func switcherTheme(type: ThemeType){
        ThemeManager.shareInstance().switcherTheme(type: type)
    }
}
