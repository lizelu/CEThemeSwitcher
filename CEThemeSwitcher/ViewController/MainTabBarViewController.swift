//
//  MainTabBarViewController.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/12.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = [FirstViewController(), SecondItemViewController()];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
