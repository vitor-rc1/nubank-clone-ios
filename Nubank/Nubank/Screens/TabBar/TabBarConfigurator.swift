//
//  HomeConfigurator.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import UIKit

final class TabBarConfigurator: SceneFactoryProtocol {
    func createScene() -> UIViewController {
        let homeViewController = TabBarViewController()

        return homeViewController
    }
}
