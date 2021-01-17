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
        topImageContainerView.backgroundColor = .blue
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        let forTimeButton = MenuButton(label: "FOR TIME")
        view.addSubview(forTimeButton)
        forTimeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        forTimeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        forTimeButton.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        forTimeButton.widthAnchor.constraint(equalToConstant: 311.0).isActive = true
        
        view.addSubview(logoImageView)
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
    }
    
}

