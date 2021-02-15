//
//  MenuButton.swift
//  Exercise Timer
//
//  Created by Tommi Saarikangas on 15.2.2021.
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
        self.snp.makeConstraints { (make) in
            make.height.equalTo(50)
            make.width.equalTo(311)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
