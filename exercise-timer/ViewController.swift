//
//  ViewController.swift
//  Exercise Timer
//
//  Created by Tommi Saarikangas on 15.1.2021.
//

import UIKit

class MenuButton: UIButton {
    
    init(label: String) {
        super.init(frame: .zero)
        self.setTitle(label, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
        self.layer.borderColor = UIColor.white.cgColor
        self.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        self.widthAnchor.constraint(equalToConstant: 311.0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewController: UIViewController {
    
    private let logoImageView: UIImageView = {
        let logo = UIImageView(image: #imageLiteral(resourceName: "Logo"))
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    private func setupLayout() {
        view.backgroundColor = .black
        
        let topImageContainerView = UIView()
//        topImageContainerView.backgroundColor = .blue
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        view.addSubview(logoImageView)
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        
        let bottomMenuContainerView = UIView()
//        bottomMenuContainerView.backgroundColor = .darkGray
        view.addSubview(bottomMenuContainerView)
        bottomMenuContainerView.translatesAutoresizingMaskIntoConstraints = false
        bottomMenuContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6).isActive = true
        bottomMenuContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomMenuContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomMenuContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        let restTimerButton = MenuButton(label: "REST TIMER")
        let forTimeButton = MenuButton(label: "FOR TIME")
        let amrapButton = MenuButton(label: "AMRAP")
        let emomButton = MenuButton(label: "EMOM")
        let tabataButton = MenuButton(label: "TABATA")

        let menuStackView = UIStackView(arrangedSubviews: [restTimerButton, forTimeButton, amrapButton, emomButton, tabataButton])
        
        bottomMenuContainerView.addSubview(menuStackView)
        menuStackView.translatesAutoresizingMaskIntoConstraints = false
        menuStackView.axis = .vertical
//        menuStackView.distribution = .equalSpacing
        menuStackView.spacing = 16
//        menuStackView.backgroundColor = .systemPink
//        menuStackView.topAnchor.constraint(equalTo: bottomMenuContainerView.topAnchor, constant: 50).isActive = true
        menuStackView.bottomAnchor.constraint(equalTo: bottomMenuContainerView.bottomAnchor, constant: -80).isActive = true
        menuStackView.centerXAnchor.constraint(equalTo: bottomMenuContainerView.centerXAnchor).isActive = true


    }
    
}

