//
//  ViewController.swift
//  Nubank
//
//  Created by Vitor Conceicao on 29/10/22.
//

import UIKit

class TabBarViewController: UIViewController {

    private let tabBarView: TabBarView

    init(tabBarView: TabBarView) {
        self.tabBarView = tabBarView
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        self.view = tabBarView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
