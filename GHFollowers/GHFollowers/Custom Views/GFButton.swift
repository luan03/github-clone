//
//  GFButton.swift
//  GHFollowers
//
//  Created by Luan Fagundes on 14/07/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit

class GFButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    // required by storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        // this adapts the font configuration on device
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
