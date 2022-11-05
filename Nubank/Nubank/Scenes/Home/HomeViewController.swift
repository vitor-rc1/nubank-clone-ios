//
//  HomeViewController.swift
//  Nubank
//
//  Created by Vitor Conceicao on 02/11/22.
//

import UIKit

final class HomeViewController: UIViewController {
    private let homeView: UIView & HomeViewProtocol
    private let controller: HomeControllerProtocol

    init(homeView: UIView & HomeViewProtocol, controller: HomeControllerProtocol) {
        self.homeView = homeView
        self.controller = controller
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        self.view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(asset: Asset.Colors.nuLight)
    }
}

extension HomeViewController: HomeControllerDelegate {

}

extension HomeViewController: UITableViewDelegate {

}

extension HomeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "teste"
        return cell
    }
}
