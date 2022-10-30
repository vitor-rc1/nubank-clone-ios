//
//  ViewController.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import UIKit

class TabBarViewController: UIViewController {

    private lazy var tabBarView: TabBarView = {
        let tabBarView = TabBarView()
        return tabBarView
    }()

    override func loadView() {
        self.view = tabBarView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
