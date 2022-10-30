//
//  HomeConfigurator.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import UIKit

final class TabBarConfigurator: SceneFactoryProtocol {
    func createScene() -> UIViewController {
        let tabBarView = TabBarView()
        let controller = TabBarController()
        let tabBarViewController = TabBarViewController(tabBarView: tabBarView, controller: controller)
        tabBarView.tabBar.delegate = tabBarViewController
        controller.delegate = tabBarViewController
        return tabBarViewController
    }
}
