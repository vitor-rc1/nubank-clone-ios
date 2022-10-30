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

    private let tabViewControllers: [UIViewController]

    // MARK: Delegates

    weak var delegate: TabBarDelegateProtocol?

    // MARK: Inits

    init(tabViewControllers: [UIViewController]) {
        self.tabViewControllers = tabViewControllers
    }

    // MARK: Private methods

    private func setSelectedTabViewController() {
        delegate?.selectedTabViewController(tabViewController: tabViewControllers[selectedTab])
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
