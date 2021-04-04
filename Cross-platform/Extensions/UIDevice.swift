//
//  UIDevice.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//

import SwiftUI

extension UIDevice {
    
    var hasNotch: Bool {
        let bottom = UIApplication.shared.keyWindowInConnectedScenes?.safeAreaInsets.bottom ?? 0
        return bottom > 0
    }
}
