//
//  HomeCoordinatorTests.swift
//  NubankTests
//
//  Created by Vitor Conceicao on 02/11/22.
//

import XCTest
@testable import Nubank

final class HomeCoordinatorTests: XCTestCase {

    func test_start_whenCalledShouldPushHomeViewController() throws {
        let (sut, navController) = makeSut()

        sut.start()

        XCTAssertTrue(navController.pushViewControllerCalled)
        XCTAssertTrue(navController.viewControllerPassed is HomeViewController)
    }

    private func makeSut() -> (HomeCoordinator, NavigationControllerSpy) {
        let navController = NavigationControllerSpy()
        let sut = HomeCoordinator(navigationController: navController)

        return (sut, navController)
    }
}
