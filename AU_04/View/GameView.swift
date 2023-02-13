//
//  GameView.swift
//  AU_04
//
//  Created by Chris on 2/13/23.
//

import Foundation
import UIKit



class GameView: UIView {


    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    
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
