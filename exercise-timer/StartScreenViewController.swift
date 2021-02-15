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
        setupLayout()
    }
    
    private func setupLayout() {
        view.backgroundColor = .black

        let topImageContainerView = UIView()
        view.addSubview(topImageContainerView)
        topImageContainerView.snp.makeConstraints { (make) in
            make.height.equalToSuperview().multipliedBy(0.4)
            make.leading.trailing.equalToSuperview()
        }

        let logo = R.image.logo()
        let logoImageView = UIImageView()
        logoImageView.image = logo
        
        topImageContainerView.addSubview(logoImageView)
        logoImageView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }

        let bottomMenuContainerView = UIView()
        view.addSubview(bottomMenuContainerView)
        bottomMenuContainerView.snp.makeConstraints { (make) in
            make.height.equalToSuperview().multipliedBy(0.6)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }

        let restTimerButton = MenuButton(label: "REST TIMER")
        let forTimeButton = MenuButton(label: "FOR TIME")
        let amrapButton = MenuButton(label: "AMRAP")
        let emomButton = MenuButton(label: "EMOM")
        let tabataButton = MenuButton(label: "TABATA")
        
        let menuStackView = UIStackView(arrangedSubviews: [restTimerButton, forTimeButton, amrapButton, emomButton, tabataButton])
        
        bottomMenuContainerView.addSubview(menuStackView)
        menuStackView.axis = .vertical
        menuStackView.spacing = 16
        menuStackView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
}

