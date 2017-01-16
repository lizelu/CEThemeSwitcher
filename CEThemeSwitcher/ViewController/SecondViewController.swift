//
//  SecondItemViewController.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/12.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class SecondViewController: SuperViewController {
    
    var switcher: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        let subViews = SubView(frame: CGRect(x: 80, y: 80, width: 200, height: 50))
        subViews.titleLabel.text = "第二个页面"
        subViews.detailLabel.text = "第二个页面详情"
        self.view.addSubview(subViews)
        
        self.switcher = UISwitch(frame: CGRect(x: 30, y: 300, width: 50, height:50))
        self.switcher.isOn = true
        self.switcher.addTarget(self, action: #selector(tapSwicher(switcher:)), for: .valueChanged)
        self.view.addSubview(self.switcher)
        
    }
    
    func tapSwicher(switcher: UISwitch) {
        if switcher.isOn {
            ThemeManager.switcherTheme(type: .THEME1)
        } else {
            ThemeManager.switcherTheme(type: .THEME2)
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
