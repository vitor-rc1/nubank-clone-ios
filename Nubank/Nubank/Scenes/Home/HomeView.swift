//
//  HomeView.swift
//  Nubank
//
//  Created by Vitor Conceicao on 02/11/22.
//

import UIKit

final class HomeView: UITableView {

    private lazy var headerView: UITableViewHeaderFooterView = {
        let headerView = HomeHeaderView(reuseIdentifier: homeHeaderReuseIdentifier)
        headerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        return headerView
    }()

    init() {
        super.init(frame: .zero, style: .plain)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension HomeView: HomeViewProtocol {

}

extension HomeView: ViewCode {
    func buildViewHierarch() {
        tableHeaderView = headerView
    }

    func setUpConstraints() {

    }

    func additionalConfiguration() {
        register(HomeHeaderView.self, forHeaderFooterViewReuseIdentifier: homeHeaderReuseIdentifier)
    }
}
