//
//  FontRepresentable.swift
//  IconFontDemo
//
//  Created by Ajay Singh Mehra on 16/05/20.
//  Copyright © 2020 Ajay Singh Mehra. All rights reserved.
//

import Foundation
import UIKit

protocol FontRepresentable: RawRepresentable {}

extension FontRepresentable where Self.RawValue == String {
    /// An alternative way to get a particular `UIFont` instance from a `Font`
    /// value.
    ///
    /// - parameter of size: The desired size of the font.
    ///
    /// - returns a `UIFont` instance of the desired font family and size, or
    /// `nil` if the font family or size isn't installed.
    func of(size: CGFloat) -> UIFont? {
        return UIFont(name: rawValue, size: size)
    }

    func of(size: Double) -> UIFont? {
        return UIFont(name: rawValue, size: CGFloat(size))
    }
}
