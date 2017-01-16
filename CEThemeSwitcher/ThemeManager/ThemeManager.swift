//
//  ThemeManager.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/12.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

/// 主题类型枚举, 其中包含了一个简单工厂方法，用来创建Theme主题类的对象
enum ThemeType {
    case whiteTheme
    case blackTheme
    case greenTheme
    case redTheme
    case yellowTheme
    case blueTheme
    
    /// 主题类型所对应的主题对象
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
    /// 当前使用的主题
    var theme: ThemeProtocol = WhiteTheme()     //默认是WhiteTheme
    
    /// ThemeManager的单例
    static var manager: ThemeManager? = nil
    static func shareInstance() -> ThemeManager {
        if manager == nil {
            manager = ThemeManager()
        }
        return manager!
    }
    
    // MARK: - 便利方法
    /// 切换主题的便利方法
    ///
    /// - Parameter type: 要切换主题的枚举类型
    static func switcherTheme(type: ThemeType){
        ThemeManager.shareInstance().switcherTheme(type: type)
    }
    
    /// 更新主题的便利方法
    static func themeUpdate() {
        NotificationCenter.default.post(name: ThemeNotifacationName, object: ThemeManager.shareInstance().theme)
    }

    //MARK: - Private Method
    /// ThemeManager的私有构造器
    private override init() {}
    
    /// 切换主题的方法
    ///
    /// - Parameter type: 要切换主题的枚举类型
    private func switcherTheme(type: ThemeType){
        self.theme = type.theme
        NotificationCenter.default.post(name: ThemeNotifacationName, object: self.theme)
    }
}
