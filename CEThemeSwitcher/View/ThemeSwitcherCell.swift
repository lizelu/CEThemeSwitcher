//
//  ThemeSwitcherCell.swift
//  CEThemeSwitcher
//
//  Created by Mr.LuDashi on 2017/1/16.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

enum CellTitleType: Int {
    case White = 0
    case Black
    case Green
    case Red
    case Yellow
    case Blue
    
    var title : String {
        get {
            switch self {
            case .White:
                return "白色主题"
            case .Black:
                return "黑色主题"
            case .Green:
                return "绿色主题"
            case .Red:
                return "红色主题"
            case .Yellow:
                return "黄色主题"
            case .Blue:
                return "蓝色主题"
            }
        }
    }
    
    var detail : String {
        get {
            switch self {
            case .White:
                return "背景白色，字体黑色"
            case .Black:
                return "背景黑色，字体白色"
            case .Green:
                return "背景绿色，字体红色"
            case .Red:
                return "背景红色，字体白色"
            case .Yellow:
                return "背景黄色，字体红色"
            case .Blue:
                return "背景蓝色，字体白色"
            }
        }
    }

    
}
class ThemeSwitcherCell: UITableViewCell {
    var customeView: SubView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.addAllSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addAllSubviews()  {
        customeView = SubView(frame: CGRect(x: 20, y: 8, width: 200, height: 50))
        self.addSubview(customeView)
    }
    
    func configCell(index: Int) {
        guard let cellType: CellTitleType = CellTitleType(rawValue: index) else {
            return
        }
        print(cellType.title)
        customeView.titleLabel.text = cellType.title
        customeView.detailLabel.text = cellType.detail
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
