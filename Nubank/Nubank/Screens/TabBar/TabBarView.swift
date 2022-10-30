//
//  TabBarView.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import UIKit

final class TabBarView: UIView {
    init() {
        print("Carregou a TabBarView")
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TabBarView: ViewCode {

    func buildViewHierarch() {

    }

    func setUpConstraints() {

    }

    func additionalConfiguration() {
        backgroundColor = UIColor(asset: Asset.Colors.nuLight)
    }

}
