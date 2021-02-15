//
//  StartScreenView.swift
//  Exercise Timer
//
//  Created by Tommi Saarikangas on 15.2.2021.
//

import UIKit

class StartScreenView: UIView {
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        backgroundColor = .black

        let topImageContainerView = UIView()
        addSubview(topImageContainerView)
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
        addSubview(bottomMenuContainerView)
        bottomMenuContainerView.snp.makeConstraints { (make) in
            make.height.equalToSuperview().multipliedBy(0.6)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
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
