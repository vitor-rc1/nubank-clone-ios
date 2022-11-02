//
//  TabBarCoordinatorTests.swift
//  NubankTests
//
//  Created by Vitor Conceicao on 02/11/22.
//

import XCTest
@testable import Nubank

final class TabBarCoordinatorTests: XCTestCase {

    func test_start_whenCalledShouldPushTabBarController() throws {
        let (sut, navController) = makeSut()

        sut.start()

        XCTAssertTrue(navController.pushViewControllerCalled)
        XCTAssertTrue(navController.viewControllerPassed is UITabBarController)
        XCTAssertTrue(sut.children.first is HomeCoordinator)
    }

    private func makeSut() -> (TabBarCoordinator, NavigationControllerSpy) {
        let navController = NavigationControllerSpy()
        let sut = TabBarCoordinator(navigationController: navController)
        return (sut, navController)
    }
}
