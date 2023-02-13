//
//  GameWindow.swift
//  AU_04
//
//  Created by Chris on 2/13/23.
//

import Foundation

class AdventureView: UIView {
    let questionLabel = UILabel()
    let option1Button = UIButton(type: .system)
    let option2Button = UIButton(type: .system)
    
    init() {
        super.init(frame: .zero)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpView() {
        questionLabel.numberOfLines = 0
        questionLabel.textAlignment = .center
        
        addSubview(questionLabel)
        addSubview(option1Button)
        addSubview(option2Button)
    }
}
