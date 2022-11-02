//
//  ViewCode.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import Foundation

protocol ViewCode {
    func buildViewHierarch()
    func setUpConstraints()
    func additionalConfiguration()
}

extension ViewCode {
    func setupView() {
        buildViewHierarch()
        setUpConstraints()
        additionalConfiguration()
    }

    func buildViewHierarch() {}
    func setUpConstraints() {}
    func additionalConfiguration() {}
}
