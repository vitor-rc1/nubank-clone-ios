//
//  HomeConfigurator.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import UIKit

final class TabBarCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        prepareTabBar()
    }

    private func prepareTabBar() {
        let tabBarPages: [TabBarPagesEnum] = [.home, .investments, .cashback]

        let controllers: [UINavigationController] = tabBarPages.map({ getTabController($0) })
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(controllers, animated: true)
        navigationController.pushViewController(tabBarController, animated: true)
    }

    private func getTabController(_ page: TabBarPagesEnum) -> UINavigationController {
        let navController = UINavigationController()
        navController.tabBarItem = page.tabBarItem

        switch page {
        case .home:
            let homeCoordinator = HomeCoordinator(navigationController: navController)
            homeCoordinator.parentCoordinator = self
            children.append(homeCoordinator)
            homeCoordinator.start()
        case .investments:
            print("investments")
        case .cashback:
            print("cashback")
        }

        return navController
    }
}
