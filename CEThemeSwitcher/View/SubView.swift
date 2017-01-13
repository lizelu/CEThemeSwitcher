//
//  SubView.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/13.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class SubView: UIView {
    var width: CGFloat {
        get {
            return self.frame.size.width
        }
    }
    
    var height: CGFloat {
        get {
            return self.frame.size.height
        }
    }
    
    var titleLabel: TitleLabel!
    var detailLabel: DetailLable!
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubViews()
    }
    
    func addSubViews() {
        self.titleLabel = TitleLabel(frame: CGRect(x: 10, y: 60, width: self.width, height: 20))
        self.addSubview(self.titleLabel)
        
        self.detailLabel = DetailLable(frame: CGRect(x: 10, y: 80, width: self.width, height:100))
        self.addSubview(self.detailLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
