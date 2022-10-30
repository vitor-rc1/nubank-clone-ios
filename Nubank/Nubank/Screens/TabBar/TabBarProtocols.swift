//
//  TabBarProtocols.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import UIKit

protocol TabaBarViewProtocol {
    func setContentView(with view: UIView)
}

protocol TabBarDelegateProtocol: AnyObject {
    func selectedTabViewController(tabViewController: UIViewController)
}

protocol TabBarControllerProtocol: AnyObject {
    func didSelectTabBarItem(tag: Int)
    func viewDidLoad()
}
