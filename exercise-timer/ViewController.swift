//
//  ViewController.swift
//  Exercise Timer
//
//  Created by Tommi Saarikangas on 15.1.2021.
//

import UIKit
import SnapKit
import Rswift

class MenuButton: UIButton {
    
    init(label: String) {
        super.init(frame: .zero)
        self.setTitle(label, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
        self.layer.borderColor = UIColor.white.cgColor
        self.snp.makeConstraints { (make) in
            make.height.equalTo(50)
            make.width.equalTo(311)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewController: UIViewController {

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

