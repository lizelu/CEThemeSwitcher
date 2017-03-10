//
//  SuperLabel.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/13.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class SuperLabel: UILabel, ThemeManagerProtocol {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.changeTheme()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeTheme() {
        NotificationCenter.default.addObserver(self, selector: #selector(handelNotification(notification:)),
                                               name: ThemeNotifacationName,
                                               object: nil)
        ThemeManager.themeUpdate()
    }
    
    func handelNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        self.textColor = self.themeTextColor(theme: theme)
    }
    
    func themeTextColor(theme:ThemeProtocol) -> UIColor {
        return theme.titleTextColor
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("释放")
    }


}
