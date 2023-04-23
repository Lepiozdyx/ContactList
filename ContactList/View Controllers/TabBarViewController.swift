//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Alex on 19.04.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let detailListVC = viewControllers?.last as? DetailListViewController else { return }
        
        let persons = Person.getRandomPersons()
        contactListVC.persons = persons
        detailListVC.persons = persons
    }

}
