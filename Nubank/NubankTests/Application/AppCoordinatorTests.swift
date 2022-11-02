//
//  AppCoordinatorTests.swift
//  NubankTests
//
//  Created by Vitor Conceicao on 02/11/22.
//

import XCTest
@testable import Nubank

final class AppCoordinatorTests: XCTestCase {

    func test_start_whenCalledSHouldAppendTabBarControllerToChildrenCoordinator() throws {
        let sut = makeSut()

        sut.start()

        XCTAssertTrue(sut.children.first is TabBarCoordinator)
    }

    private func makeSut() -> AppCoordinator {
        let navController = NavigationControllerSpy()
        let sut = AppCoordinator(navigationController: navController)

        return sut
    }

}
