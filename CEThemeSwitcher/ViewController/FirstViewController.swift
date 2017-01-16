//
//  ViewController.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/12.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class FirstViewController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "主页"
        self.addAllSubViews()
    }
    
    func addAllSubViews() {
        let subViews = SubView(frame: CGRect(x: 80, y: 80, width: 200, height: 50))
        subViews.titleLabel.text = "第一个页面"
        subViews.detailLabel.text = "第一个页面详情"
        self.view.addSubview(subViews)
        
        let button: UIButton = UIButton(frame: CGRect(x: 30, y: 300, width: 50, height:50))
        button.setTitleColor(UIColor.red, for: .normal)
        button.setTitle("PUSH", for: .normal)
        button.addTarget(self, action: #selector(tapButton(sender:)), for: .touchUpInside)
        self.view.addSubview(button)
    }

    func tapButton(sender: UIButton) {
        self.navigationController?.show(FirstSubViewController(), sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

