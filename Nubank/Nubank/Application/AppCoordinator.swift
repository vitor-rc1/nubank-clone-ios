//
//  AppCoordinator.swift
//  Nubank
//
//  Created by Vitor Conceicao on 02/11/22.
//

import UIKit

final class AppCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        goToTabBar()
    }

    func goToTabBar() {
        let tabBarCoordinator = TabBarCoordinator(navigationController: navigationController)
        tabBarCoordinator.parentCoordinator = self
        children.append(tabBarCoordinator)
        tabBarCoordinator.start()
    }
}
