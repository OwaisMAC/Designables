//
//  AppDelegate.swift
//  Designable
//
//  Created by MAC on 5/28/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit
enum FontType: Int {
    case Font1 = 0, Font2, Font3, Font4, Font5
    
    var fount: UIFont {
        switch self {
        case .Font1:
            return UIFont.systemFont(ofSize: 12)
        case .Font2:
            return UIFont.systemFont(ofSize: 14)
        case .Font3:
            return UIFont.systemFont(ofSize: 16)
        case .Font4:
            return UIFont.systemFont(ofSize: 18)
        case .Font5:
            return UIFont.systemFont(ofSize: 20)
        }
    }
    
    
    static func getFont(rawValue: Int) -> UIFont  {
        if let fontType = FontType(rawValue: rawValue) {
            return fontType.fount
        }
        return FontType.Font1.fount
    }
}

@IBDesignable
class CustomView: UIView {
    
    private var label: UILabel!
    
    @IBInspectable var textFont:Int = 0
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        label = UILabel(frame: CGRect(x: 20, y: 20, width: 120, height: 40))
        label.text = "Text"
        label.textColor = .black
        label.font = FontType.getFont(rawValue: textFont)
        addSubview(label)
    }
    
}
