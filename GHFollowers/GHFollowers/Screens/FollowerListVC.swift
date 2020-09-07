//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Luan Fagundes on 22/07/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    
}
