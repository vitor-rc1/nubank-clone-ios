//
//  HomeConfigurator.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import UIKit

final class TabBarConfigurator: SceneFactoryProtocol {
    func createScene() -> UIViewController {
        let tabBarPages: [TabBarPagesEnum] = [
            .home,
            .investments,
            .cashback
        ]

        var tabBarItems: [UITabBarItem] = []
        var tabNavigationControllers: [UINavigationController] = []

        for tabBarPage in tabBarPages {
            tabBarItems.append(tabBarPage.tabBarItem)
            tabNavigationControllers.append(tabBarPage.navigationController)
        }

        let tabBarView = TabBarView(tabBarItems: tabBarItems)
        let controller = TabBarController(tabViewControllers: tabNavigationControllers)
        let tabBarViewController = TabBarViewController(tabBarView: tabBarView, controller: controller)
        tabBarView.tabBar.delegate = tabBarViewController
        controller.delegate = tabBarViewController
        return tabBarViewController
    }
}
