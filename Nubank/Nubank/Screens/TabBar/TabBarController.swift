//
//  HomeController.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import UIKit

final class TabBarController {

    // MARK: Private properties
    private var selectedTab: Int = 0 {
        didSet {
            setSelectedTabViewController()
        }
    }

    // MARK: Delegates

    weak var delegate: TabBarDelegateProtocol?

    // MARK: Private methods

    private func setSelectedTabViewController() {
        let viewController = UIViewController()
        let view = UIView()
        view.backgroundColor = selectedTab == 0 ? .green : .blue
        viewController.view = view
        delegate?.selectedTabViewController(tabViewController: viewController)
    }

}

extension TabBarController: TabBarControllerProtocol {

    func didSelectTabBarItem(tag: Int) {
        selectedTab = tag
    }

    func viewDidLoad() {
        selectedTab = 0
    }
}
