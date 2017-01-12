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
        let first = FirstViewController()
        first.tabBarItem = createItemBar(title: "first", tag: 0)
        
        let second = SecondItemViewController()
        second.tabBarItem = createItemBar(title: "second", tag: 0)
        self.viewControllers = [first, second];
    }
    
    private func createItemBar(title: String, tag: Int) -> UITabBarItem {
        let item = UITabBarItem(title: title, image: nil, tag: tag)
        return item
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
