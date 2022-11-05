//
//  UINavigationControllerSpy.swift
//  NubankTests
//
//  Created by Vitor Conceicao on 02/11/22.
//

import UIKit

final class NavigationControllerSpy: UINavigationController {

    private(set) var pushViewControllerCalled: Bool = false
    private(set) var viewControllerPassed: UIViewController?
    private(set) var presentDidCalled = false

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        pushViewControllerCalled = true
        self.viewControllerPassed = viewController
    }

    override func present(_ viewControllerToPresent: UIViewController,
                          animated flag: Bool,
                          completion: (() -> Void)? = nil) {
        presentDidCalled = true
        self.viewControllerPassed = viewControllerToPresent
    }

}
