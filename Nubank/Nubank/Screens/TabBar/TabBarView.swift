//
//  TabBarView.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import UIKit

final class TabBarView: UIView {
    // MARK: Private properties

    private lazy var tabBar: UITabBar = {
        let tabBar = UITabBar()
        tabBar.translatesAutoresizingMaskIntoConstraints = false
        let tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        let tabBarItem2 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)

        tabBar.setItems([tabBarItem, tabBarItem2], animated: false)
        tabBar.selectedItem = tabBarItem
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
        contenView.backgroundColor = UIColor(asset: Asset.Colors.nuGray1)
        contenView.translatesAutoresizingMaskIntoConstraints = false
        return contenView
    }()

    init() {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TabBarView: ViewCode {

    func buildViewHierarch() {
        scrollView.addSubview(header)
        scrollView.addSubview(contenView)

        addSubview(tabBar)
        addSubview(scrollView)
    }

    func setUpConstraints() {
        setupTabBarConstraints()
        setupScrollViewConstraints()
        setupHeaderConstraints()
        setupContenViewConstraints()
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
            contenView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contenView.heightAnchor.constraint(equalToConstant: 1000)
        ])
    }
}
