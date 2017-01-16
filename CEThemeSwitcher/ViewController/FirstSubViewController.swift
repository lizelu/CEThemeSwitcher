//
//  FirstSubViewController.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/13.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class FirstSubViewController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "子页面"
        self.addAllSubViews()
    }
    
    func addAllSubViews() {
        let subViews = SubView(frame: CGRect(x: 80, y: 80, width: 200, height: 50))
        subViews.titleLabel.text = "第一个页面的子页面"
        subViews.detailLabel.text = "第一个页面子页面详情"
        self.view.addSubview(subViews)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
