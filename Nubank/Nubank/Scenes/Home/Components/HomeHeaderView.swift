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

    lazy var verticalStackView: UIStackView = {
        let verticalStackView = UIStackView()
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 24
        verticalStackView.distribution = .fill
        verticalStackView.alignment = .leading
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        return verticalStackView
    }()

    lazy var horizontalStackView: UIStackView = {
        let horizontalStackView = UIStackView()
        horizontalStackView.axis = .horizontal
        horizontalStackView.spacing = 12
        horizontalStackView.distribution = .fill
        horizontalStackView.alignment = .center
        return horizontalStackView
    }()

    lazy var profileImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .gray
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 25
        let image = UIImage(systemName: "person.fill")
        imageView.tintColor = UIColor(asset: Asset.Colors.nuLight)
        imageView.image = image
        return imageView
    }()

    lazy var usernameLabel: UILabel = {
        let usernameLabel = UILabel()
        usernameLabel.text = "Olá, Vitor"
        usernameLabel.font = .systemFont(ofSize: 21, weight: .bold)
        usernameLabel.textColor = UIColor(asset: Asset.Colors.nuLight)
        return usernameLabel
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
        horizontalStackView.addArrangedSubview(profileImage)

        verticalStackView.addArrangedSubview(horizontalStackView)
        verticalStackView.addArrangedSubview(usernameLabel)

        contentView.addSubview(verticalStackView)
    }

    func setUpConstraints() {
        setupVerticalStackViewConstraints()
        setupProfileImageConstraints()
    }

    func additionalConfiguration() {
        contentView.backgroundColor = UIColor(asset: Asset.Colors.nuPurple)
    }

    private func setupVerticalStackViewConstraints() {
        NSLayoutConstraint.activate([
            verticalStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24),
            verticalStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -24),
            verticalStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            verticalStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24)
        ])
    }

    private func setupProfileImageConstraints() {
        NSLayoutConstraint.activate([
            profileImage.widthAnchor.constraint(equalToConstant: 50),
            profileImage.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
