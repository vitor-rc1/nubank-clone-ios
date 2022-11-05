//
//  TabBarItems.swift
//  Nubank
//
//  Created by Vitor Conceicao on 30/10/22.
//

import Foundation
import UIKit

enum TabBarPagesEnum: Int {
    case home = 0
    case investments = 1
    case cashback = 2

    var tabBarItem: UITabBarItem {
        switch self {
        case .home:
            return setupTabBarItem(imageName: "arrow.up.arrow.down")
        case .investments:
            return setupTabBarItem(imageName: "dollarsign")
        case .cashback:
            return setupTabBarItem(imageName: "bag")
        }
    }

    private func setupTabBarItem(imageName: String) -> UITabBarItem {
        return UITabBarItem(title: nil, image: UIImage(systemName: imageName), tag: rawValue)
    }
}
