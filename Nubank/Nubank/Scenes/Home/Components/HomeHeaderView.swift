//
//  HomeHeaderView.swift
//  Nubank
//
//  Created by Vitor Conceicao on 05/11/22.
//

import UIKit

let homeHeaderReuseIdentifier: String = "HomeHeaderView"

final class HomeHeaderView: UITableViewHeaderFooterView {

    lazy var viewBla: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(asset: Asset.Colors.nuPurple)
        return view
    }()

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension HomeHeaderView: ViewCode {
    func buildViewHierarch() {
        contentView.addSubview(viewBla)
    }

    func setUpConstraints() {
        NSLayoutConstraint.activate([
            viewBla.heightAnchor.constraint(equalToConstant: 75.0),
            viewBla.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewBla.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewBla.topAnchor.constraint(equalTo: topAnchor),
        ])
    }

    func additionalConfiguration() {
        backgroundConfiguration?.backgroundColor = UIColor(asset: Asset.Colors.nuPurple)
    }
}
