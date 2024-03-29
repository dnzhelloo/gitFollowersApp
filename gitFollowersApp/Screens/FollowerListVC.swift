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
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
