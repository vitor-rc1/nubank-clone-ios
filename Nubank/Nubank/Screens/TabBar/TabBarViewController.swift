//
//  ViewController.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import UIKit

final class TabBarViewController: UIViewController {

    private let tabBarView: UIView & TabaBarViewProtocol
    private let controller: TabBarControllerProtocol

    init(tabBarView: UIView & TabaBarViewProtocol, controller: TabBarControllerProtocol) {
        self.tabBarView = tabBarView
        self.controller = controller
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        self.view = tabBarView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        controller.viewDidLoad()
    }
}

extension TabBarViewController: TabBarDelegateProtocol {
    func selectedTabViewController(tabViewController: UIViewController) {
        tabBarView.setContentView(with: tabViewController.view)
    }
}

extension TabBarViewController: UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        controller.didSelectTabBarItem(tag: item.tag)
    }
}
