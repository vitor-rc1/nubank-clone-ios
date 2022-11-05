//
//  HomeView.swift
//  Nubank
//
//  Created by Vitor Conceicao on 02/11/22.
//

import UIKit

final class HomeView: UITableView {
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

    }

    func setUpConstraints() {

    }

    func additionalConfiguration() {

    }
}
