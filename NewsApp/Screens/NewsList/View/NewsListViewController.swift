//
//  NewsListViewController.swift
//  NewsApp
//
//  Created by Andrii Boichuk on 05.11.2022.
//

import UIKit
import SnapKit

class NewsListViewController: UIViewController {
    
    private let sortButton = UIButton()
    private let filterButton = UIButton()
    private let tableView = UITableView()
    private let searchController = UISearchController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @objc func sortButtonTapped(_ sender: UIButton) {
//        animateTap(sender)
//        presenter.sortArticles()
    }
    
    @objc func filterButtonTapped(_ sender: UIButton) {
//        animateTap(sender)
    }

}

// MARK: - Setup view

extension NewsListViewController {
    
    func setupNavBar() {
        view.backgroundColor = .white
        
        let sortImage = UIImage(systemName: "arrow.up.arrow.down.square")
        sortButton.setBackgroundImage(sortImage, for: .normal)
        sortButton.frame = CGRect(x: 0, y: 0, width: 34, height: 30)
        sortButton.tintColor = .label
        sortButton.addTarget(self, action: #selector(sortButtonTapped), for: .touchUpInside)
        
        let filterImage = UIImage(systemName: "line.3.horizontal.decrease.circle")
        filterButton.setBackgroundImage(filterImage, for: .normal)
        filterButton.frame = CGRect(x: 0, y: 0, width: 32, height: 30)
        filterButton.tintColor = .label
        filterButton.addTarget(self, action: #selector(filterButtonTapped), for: .touchUpInside)
        
//        let favouriteImage = UIImage(systemName: "seal")
//        favouriteButton.setBackgroundImage(favouriteImage, for: .normal)
//        favouriteButton.frame = CGRect(x: 0, y: 0, width: 32, height: 30)
//        favouriteButton.tintColor = .label
//        favouriteButton.addTarget(self, action: #selector(favouriteButtonTapped), for: .touchUpInside)
        
        navigationItem.searchController = searchController
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: sortButton), UIBarButtonItem(customView: filterButton)]
//        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: favouriteButton)
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        let cell = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "CustomCell")
//        tableView.dataSource = self
        tableView.delegate = self
        
//        if #available(iOS 10.0, *) {
//            tableView.refreshControl = refreshControl
//        } else {
//            tableView.addSubview(refreshControl)
//        }
//        refreshControl.addTarget(self, action: #selector(getArticles(_:)), for: .valueChanged)
    }
    
}

// MARK: - UITableViewDataSource

//extension NewsListViewController: UITableViewDataSource {
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }
//
//
//}

// MARK: - UITableViewDelegate

extension NewsListViewController: UITableViewDelegate {
    
}

