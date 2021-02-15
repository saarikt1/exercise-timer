//
//  ViewController.swift
//  Exercise Timer
//
//  Created by Tommi Saarikangas on 15.1.2021.
//

import UIKit
import SnapKit
import Rswift


class StartScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let startScreenView = StartScreenView()
        view.addSubview(startScreenView)
        startScreenView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
}

