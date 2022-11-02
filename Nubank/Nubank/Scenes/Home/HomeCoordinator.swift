//
//  HomeCoordinator.swift
//  Nubank
//
//  Created by Vitor Conceicao on 02/11/22.
//

import UIKit

class HomeCoordinator: Coordinator {

    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        goToHome()
    }
}

extension HomeCoordinator: HomeNavigation {
    func goToHome() {
        let homeController = HomeController()
        let homeView = HomeView()
        let homeViewController = HomeViewController(homeView: homeView, controller: homeController)
        homeController.delegate = homeViewController
        navigationController.pushViewController(homeViewController, animated: true)
    }
}
