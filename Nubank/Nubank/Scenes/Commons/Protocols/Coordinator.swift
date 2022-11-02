//
//  Coordinator.swift
//  Nubank
//
//  Created by Vitor Conceicao on 02/11/22.
//

import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
