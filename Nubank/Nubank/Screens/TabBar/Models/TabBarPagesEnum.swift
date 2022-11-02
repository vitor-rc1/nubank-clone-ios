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
            return UITabBarItem(tabBarSystemItem: .bookmarks, tag: self.rawValue)
        case .investments:
            return UITabBarItem(tabBarSystemItem: .history, tag: self.rawValue)
        case .cashback:
            return UITabBarItem(tabBarSystemItem: .contacts, tag: self.rawValue)
        }
    }
}
