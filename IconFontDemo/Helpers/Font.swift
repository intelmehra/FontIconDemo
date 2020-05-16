//
//  Font.swift
//  IconFontDemo
//
//  Created by Ajay Singh Mehra on 16/05/20.
//  Copyright © 2020 Ajay Singh Mehra. All rights reserved.
//

import Foundation
import UIKit

enum Font: String, FontRepresentable {
    // Custom Font
    case iconFont = "iconfont"

}


extension UIFont {
    enum StandardSize: CGFloat {
        case h0 = 24.0
        case h1 = 20.0
        case h2 = 18.0
        case h3 = 16.0
        case h4 = 14.0
        case h5 = 12.0
        case h6 = 10.0
    }

    enum FontType {
        case installed(Font)
        case system
        case systemBold
        case systemItalic
        case systemWeighted(weight: Double)
        case monoSpacedDigit(size: Double, weight: Double)
    }

    enum FontSize {
        case standard(StandardSize)
        case custom(CGFloat)
        var value: CGFloat {
            switch self {
            case .standard(let size):
                return size.rawValue
            case .custom(let customSize):
                return customSize
            }
        }
    }

    convenience init?(fontType: FontType, size: FontSize) {
        var instanceFont: UIFont?
        switch fontType {
        case .installed(let font):
            instanceFont = UIFont(name: font.rawValue, size: size.value)
        case .system:
            instanceFont = UIFont.systemFont(ofSize: CGFloat(size.value))
        case .systemBold:
            instanceFont = UIFont.boldSystemFont(ofSize: CGFloat(size.value))
        case .systemItalic:
            instanceFont = UIFont.italicSystemFont(ofSize: CGFloat(size.value))
        case .systemWeighted(let weight):
            instanceFont = UIFont.systemFont(ofSize: CGFloat(size.value),
                                             weight: UIFont.Weight(rawValue: CGFloat(weight)))
        case .monoSpacedDigit(let size, let weight):
            instanceFont = UIFont.monospacedDigitSystemFont(ofSize: CGFloat(size),
                                                            weight: UIFont.Weight(rawValue: CGFloat(weight)))
        }
        if let instanceFont = instanceFont {
            self.init(name: instanceFont.fontName, size: instanceFont.pointSize)
        } else {
            self.init()
        }
    }
}


