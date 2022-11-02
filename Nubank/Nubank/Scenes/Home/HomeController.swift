//
//  HomeController.swift
//  Nubank
//
//  Created by Vitor Conceicao on 02/11/22.
//

import Foundation

final class HomeController {
    weak var delegate: HomeControllerDelegate?
}

extension HomeController: HomeControllerProtocol {
    
}
