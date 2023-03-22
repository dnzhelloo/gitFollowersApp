//
//  FollowerListVC.swift
//  gitFollowersApp
//
//  Created by deniz on 21.03.2023.
//

import UIKit

class FollowerListVC: UIViewController {

    var username:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
