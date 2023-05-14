//
//  NavBarModel.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 01.02.2023.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
