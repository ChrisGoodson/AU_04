//
//  ViewController.swift
//  AU_04
//
//  Created by Chris on 2/13/23.
//

import UIKit
import Foundation

class GameViewController: UIViewController {
    
    @IBOutlet weak var gameView: GameView!

    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    override func loadView() {
        view = gameView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpInitialQuestion()
    }
    
    private func setUpInitialQuestion() {
        gameView.questionLabel.text = "Do you want to become a vampire hunter and hunt down the vampire lord?"
        gameView.option1Button.setTitle("Yes", for: .normal)
        gameView.option1Button.addTarget(self, action: #selector(option1Tapped), for: .touchUpInside)
        gameView.option2Button.setTitle("No", for: .normal)
        gameView.option2Button.addTarget(self, action: #selector(option2Tapped), for: .touchUpInside)
    }
    
    @objc private func option1Tapped() {
        gameView.questionLabel.text = "Do you want to infiltrate the vampire lord's castle or gather information from the local town?"
        gameView.option1Button.setTitle("Infiltrate the castle", for: .normal)
        gameView.option1Button.removeTarget(nil, action: nil, for: .allEvents)
        gameView.option1Button.addTarget(self, action: #selector(option3Tapped), for: .touchUpInside)
        gameView.option2Button.setTitle("Gather information", for: .normal)
        gameView.option2Button.removeTarget(nil, action: nil, for: .allEvents)
        gameView.option2Button.addTarget(self, action: #selector(option4Tapped), for: .touchUpInside)
    }
    
    @objc private func option2Tapped() {
            let outcome = Outcome.lose("GAME OVER")
            showOutcome(outcome)
        }
        
        @objc private func option3Tapped() {
            gameView.questionLabel.text = "Do you want to face the vampire lord head on or sneak into their lair and attack while they sleep?"
            gameView.option1Button.setTitle("Face the vampire lord", for: .normal)
            gameView.option1Button.removeTarget(nil, action: nil, for: .allEvents)
            gameView.option1Button.addTarget(self, action: #selector(option5Tapped), for: .touchUpInside)
            gameView.option2Button.setTitle("Sneak into the lair", for: .normal)
            gameView.option2Button.removeTarget(nil, action: nil, for: .allEvents)
            gameView.option2Button.addTarget(self, action: #selector(option6Tapped), for: .touchUpInside)
        }
        
        @objc private func option4Tapped() {
            gameView.questionLabel.text = "Do you want to ally with the local vampire hunters or bribe a guard for information?"
            gameView.option1Button.setTitle("Ally with hunters", for: .normal)
            gameView.option1Button.removeTarget(nil, action: nil, for: .allEvents)
            gameView.option1Button.addTarget(self, action: #selector(option7Tapped), for: .touchUpInside)
            gameView.option2Button.setTitle("Bribe a guard", for: .normal)
            gameView.option2Button.removeTarget(nil, action: nil, for: .allEvents)
            gameView.option2Button.addTarget(self, action: #selector(option8Tapped), for: .touchUpInside)
        }
        
        @objc private func option5Tapped() {
            let outcome = Outcome.lose("GAME OVER")
            showOutcome(outcome)
        }
        
        @objc private func option6Tapped() {
            let outcome = Outcome.win("You successfully defeated the vampire lord and saved the town.")
            showOutcome(outcome)
        }
        
        @objc private func option7Tapped() {
            let outcome = Outcome.win("You successfully gained valuable information and defeated the vampire lord.")
            showOutcome(outcome)
        }
        
        @objc private func option8Tapped() {
            let outcome = Outcome.lose("GAME OVER")
            showOutcome(outcome)
        }
        
        private func showOutcome(_ outcome: Outcome) {
            switch outcome {
            case .win(let message):
                let alertController = UIAlertController(title: "You Win!", message: message, preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
                    self?.dismiss(animated: true, completion: nil)
                }
                alertController.addAction(action)
                present(alertController, animated: true, completion: nil)
            case .lose(let message):
                let alertController = UIAlertController(title: "You Lose!", message: message, preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
                    self?.dismiss(animated: true, completion: nil)
                }
                alertController.addAction(action)
                present(alertController, animated: true, completion: nil)
            }
        }
    }
