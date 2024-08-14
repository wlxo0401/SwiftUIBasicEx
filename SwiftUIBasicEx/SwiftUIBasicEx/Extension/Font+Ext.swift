//
//  Font+Ext.swift
//  SwiftUIBasicEx
//
//  Created by 김지태 on 8/14/24.
//

import SwiftUI

extension Font {
    enum Pretendard {
        case black
        case bold
        case extraBold
        case extraLight
        case light
        case medium
        case regular
        case semiBold
        case thin
        case custom(String)
        
        var value: String {
            switch self {
            case .black: return "Pretendard-Black"
            case .bold: return "Pretendard-Bold"
            case .extraBold: return "Pretendard-ExtraBold"
            case .extraLight: return "Pretendard-ExtraLight"
            case .light: return "Pretendard-Light"
            case .medium: return "Pretendard-Medium"
            case .regular: return "Pretendard-Regular"
            case .semiBold: return "Pretendard-SemiBold"
            case .thin: return "Pretendard-Thin"
            case .custom(let name):
                return name
            }
        }
    }

    static func pretendard(_ type: Pretendard, size: CGFloat = 17) -> Font {
        return .custom(type.value, size: size)
    }
}
