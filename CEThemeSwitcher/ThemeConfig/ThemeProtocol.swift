//
//  ThemeProtocol.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/13.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

/// 主题协议，所有的主题要遵循该协议
protocol ThemeProtocol {
    var backgroundColor: UIColor {get}
    var titleTextColor: UIColor {get}
    var detailTextColor: UIColor {get}
}
