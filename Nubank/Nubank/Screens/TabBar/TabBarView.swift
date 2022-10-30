//
//  TabBarView.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import UIKit

final class TabBarView: UIView {
    // MARK: Private properties

    private(set) lazy var tabBar: UITabBar = {
        let tabBar = UITabBar()
        tabBar.translatesAutoresizingMaskIntoConstraints = false
        return tabBar
    }()

    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()

    private lazy var header: UIView = {
        let header = UIView()
        header.backgroundColor = UIColor(asset: Asset.Colors.nuPurple)
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()

    private lazy var contenView: UIView = {
        let contenView = UIView()
        contenView.translatesAutoresizingMaskIntoConstraints = false
        return contenView
    }()

    private let tabBarItems: [UITabBarItem]

    init(tabBarItems: [UITabBarItem]) {
        self.tabBarItems = tabBarItems
        super.init(frame: .zero)
        setupView()
        setTabBarItems()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setTabBarItems() {
        guard let firsItem = tabBarItems.first else {
            return
        }

        tabBar.setItems(tabBarItems, animated: false)
        tabBar.selectedItem = firsItem
    }
}

extension TabBarView: TabaBarViewProtocol {
    func setContentView(with view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        contenView.removeFromSuperview()
        contenView = view
        scrollView.addSubview(contenView)
        setupContenViewConstraints()
    }
}

extension TabBarView: ViewCode {

    func buildViewHierarch() {
        scrollView.addSubview(header)

        addSubview(tabBar)
        addSubview(scrollView)
    }

    func setUpConstraints() {
        setupTabBarConstraints()
        setupScrollViewConstraints()
        setupHeaderConstraints()
    }

    func additionalConfiguration() {
        backgroundColor = UIColor(asset: Asset.Colors.nuLight)
    }

    private func setupTabBarConstraints() {
        NSLayoutConstraint.activate([
            tabBar.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            tabBar.leadingAnchor.constraint(equalTo: leadingAnchor),
            tabBar.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }

    private func setupScrollViewConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: tabBar.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }

    private func setupHeaderConstraints() {
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: scrollView.topAnchor),
            header.heightAnchor.constraint(equalToConstant: 100),
            header.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }

    private func setupContenViewConstraints() {
        NSLayoutConstraint.activate([
            contenView.topAnchor.constraint(equalTo: header.bottomAnchor),
            contenView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contenView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
}
