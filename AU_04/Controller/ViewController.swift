//
//  ViewController.swift
//  AU_04
//
//  Created by Chris on 2/13/23.
//

import UIKit
import Foundation

class GameViewController: UIViewController {
    
    
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpInitialQuestion()
    }
    
    private func setUpInitialQuestion() {
        questionLabel.text = "Do you want to become a vampire hunter and hunt down the vampire lord?"
        option1Button.setTitle("Yes", for: .normal)
        option1Button.addTarget(self, action: #selector(option1Tapped), for: .touchUpInside)
        option2Button.setTitle("No", for: .normal)
        option2Button.addTarget(self, action: #selector(option2Tapped), for: .touchUpInside)
    }
    
    @objc private func option1Tapped() {
        questionLabel.text = "Do you want to infiltrate the vampire lord's castle or gather information from the local town?"
        option1Button.setTitle("Infiltrate the castle", for: .normal)
        option1Button.removeTarget(nil, action: nil, for: .allEvents)
        option1Button.addTarget(self, action: #selector(option3Tapped), for: .touchUpInside)
        option2Button.setTitle("Gather information", for: .normal)
        option2Button.removeTarget(nil, action: nil, for: .allEvents)
        option2Button.addTarget(self, action: #selector(option4Tapped), for: .touchUpInside)
    }
    
    @objc private func option2Tapped() {
            let outcome = Outcome.lose("GAME OVER")
            showOutcome(outcome)
        }
        
        @objc private func option3Tapped() {
            questionLabel.text = "Do you want to face the vampire lord head on or sneak into their lair and attack while they sleep?"
            option1Button.setTitle("Face the vampire lord", for: .normal)
            option1Button.removeTarget(nil, action: nil, for: .allEvents)
            option1Button.addTarget(self, action: #selector(option5Tapped), for: .touchUpInside)
            option2Button.setTitle("Sneak into the lair", for: .normal)
            option2Button.removeTarget(nil, action: nil, for: .allEvents)
            option2Button.addTarget(self, action: #selector(option6Tapped), for: .touchUpInside)
        }
        
        @objc private func option4Tapped() {
            questionLabel.text = "Do you want to ally with the local vampire hunters or bribe a guard for information?"
            option1Button.setTitle("Ally with hunters", for: .normal)
            option1Button.removeTarget(nil, action: nil, for: .allEvents)
            option1Button.addTarget(self, action: #selector(option7Tapped), for: .touchUpInside)
            option2Button.setTitle("Bribe a guard", for: .normal)
            option2Button.removeTarget(nil, action: nil, for: .allEvents)
            option2Button.addTarget(self, action: #selector(option8Tapped), for: .touchUpInside)
        }
        
    @objc private func option5Tapped() {
        questionLabel.text = "You have encountered the vampire lord. Do you want to use holy water or silver weapons?"
        option1Button.setTitle("Use holy water", for: .normal)
        option1Button.removeTarget(nil, action: nil, for: .allEvents)
        option1Button.addTarget(self, action: #selector(option9Tapped), for: .touchUpInside)
        option2Button.setTitle("Use silver weapons", for: .normal)
        option2Button.removeTarget(nil, action: nil, for: .allEvents)
        option2Button.addTarget(self, action: #selector(option10Tapped), for: .touchUpInside)
    }

    @objc private func option6Tapped() {
        questionLabel.text = "You have entered the vampire lord's lair. Do you want to set fire to the place or hide and wait for an opportunity to strike?"
        option1Button.setTitle("Set fire to the place", for: .normal)
        option1Button.removeTarget(nil, action: nil, for: .allEvents)
        option1Button.addTarget(self, action: #selector(option11Tapped), for: .touchUpInside)
        option2Button.setTitle("Hide and wait", for: .normal)
        option2Button.removeTarget(nil, action: nil, for: .allEvents)
        option2Button.addTarget(self, action: #selector(option12Tapped), for: .touchUpInside)
    }

    @objc private func option7Tapped() {
        questionLabel.text = "The vampire hunters have agreed to help you. Do you want to lead the charge or plan a sneak attack?"
        option1Button.setTitle("Lead the charge", for: .normal)
        option1Button.removeTarget(nil, action: nil, for: .allEvents)
        option1Button.addTarget(self, action: #selector(option13Tapped), for: .touchUpInside)
        option2Button.setTitle("Plan a sneak attack", for: .normal)
        option2Button.removeTarget(nil, action: nil, for: .allEvents)
        option2Button.addTarget(self, action: #selector(option14Tapped), for: .touchUpInside)
    }

    @objc private func option8Tapped() {
        questionLabel.text = "You have bribed a guard for information. Do you want to use the information to rescue a captive or to find the vampire lord's weakness?"
        option1Button.setTitle("Rescue a captive", for: .normal)
        option1Button.removeTarget(nil, action: nil, for: .allEvents)
        option1Button.addTarget(self, action: #selector(option15Tapped), for: .touchUpInside)
        option2Button.setTitle("Find the vampire lord's weakness", for: .normal)
        option2Button.removeTarget(nil, action: nil, for: .allEvents)
        option2Button.addTarget(self, action: #selector(option16Tapped), for: .touchUpInside)
    }

    @objc private func option9Tapped() {
        questionLabel.text = "Do you want to ask the local barkeep for information or search for clues in the town?"
        option1Button.setTitle("Ask the barkeep", for: .normal)
        option1Button.removeTarget(nil, action: nil, for: .allEvents)
        option1Button.addTarget(self, action: #selector(option10Tapped), for: .touchUpInside)
        option2Button.setTitle("Search for clues", for: .normal)
        option2Button.removeTarget(nil, action: nil, for: .allEvents)
        option2Button.addTarget(self, action: #selector(option11Tapped), for: .touchUpInside)
    }
    
    @objc private func option10Tapped() {
        let outcome = Outcome.win("You gain valuable information and successfully defeat the vampire lord.")
        showOutcome(outcome)
    }
    
    @objc private func option11Tapped() {
        questionLabel.text = "Do you want to team up with a group of travelers or go it alone?"
        option1Button.setTitle("Team up", for: .normal)
        option1Button.removeTarget(nil, action: nil, for: .allEvents)
        option1Button.addTarget(self, action: #selector(option12Tapped), for: .touchUpInside)
        option2Button.setTitle("Go it alone", for: .normal)
        option2Button.removeTarget(nil, action: nil, for: .allEvents)
        option2Button.addTarget(self, action: #selector(option13Tapped), for: .touchUpInside)
    }
    
    @objc private func option12Tapped() {
        let outcome = Outcome.win("You successfully defeat the vampire lord with the help of your allies.")
        showOutcome(outcome)
    }
    
    @objc private func option13Tapped() {
        let outcome = Outcome.lose("GAME OVER")
        showOutcome(outcome)
    }
    
    @objc private func option14Tapped() {
        questionLabel.text = "Do you want to bribe the vampire lord's right hand or sneak into the castle undetected?"
        option1Button.setTitle("Bribe right hand", for: .normal)
        option1Button.removeTarget(nil, action: nil, for: .allEvents)
        option1Button.addTarget(self, action: #selector(option15Tapped), for: .touchUpInside)
        option2Button.setTitle("Sneak into the castle", for: .normal)
        option2Button.removeTarget(nil, action: nil, for: .allEvents)
        option2Button.addTarget(self, action: #selector(option16Tapped), for: .touchUpInside)
    }
    
    @objc private func option15Tapped() {
        questionLabel.text = "You have come across a rare magical artifact, do you want to sell it or keep it for yourself?"
        option1Button.setTitle("Sell it", for: .normal)
        option1Button.removeTarget(nil, action: nil, for: .allEvents)
        option1Button.addTarget(self, action: #selector(option16Tapped), for: .touchUpInside)
        option2Button.setTitle("Keep it", for: .normal)
        option2Button.removeTarget(nil, action: nil, for: .allEvents)
        option2Button.addTarget(self, action: #selector(option17Tapped), for: .touchUpInside)
    }

   
        @objc private func option16Tapped() {
            questionLabel.text = "Do you want to face the vampire lord head on with all your allies, or sneak into their lair and attack while they sleep?"
            option1Button.setTitle("Face the vampire lord", for: .normal)
            option1Button.removeTarget(nil, action: nil, for: .allEvents)
            option1Button.addTarget(self, action: #selector(option17Tapped), for: .touchUpInside)
            option2Button.setTitle("Sneak into the lair", for: .normal)
            option2Button.removeTarget(nil, action: nil, for: .allEvents)
            option2Button.addTarget(self, action: #selector(option18Tapped), for: .touchUpInside)
        }

        @objc private func option17Tapped() {
            let outcome = Outcome.lose("GAME OVER")
            showOutcome(outcome)
        }

        @objc private func option18Tapped() {
            questionLabel.text = "Do you want to sneak in alone or with a partner?"
            option1Button.setTitle("Sneak in alone", for: .normal)
            option1Button.removeTarget(nil, action: nil, for: .allEvents)
            option1Button.addTarget(self, action: #selector(option19Tapped), for: .touchUpInside)
            option2Button.setTitle("Sneak in with a partner", for: .normal)
            option2Button.removeTarget(nil, action: nil, for: .allEvents)
            option2Button.addTarget(self, action: #selector(option20Tapped), for: .touchUpInside)
        }

        @objc private func option19Tapped() {
            let outcome = Outcome.lose("GAME OVER")
            showOutcome(outcome)
        }

        @objc private func option20Tapped() {
            let outcome = Outcome.win("You successfully defeated the vampire lord and saved the town.")
            showOutcome(outcome)
        }

        @objc private func option21Tapped() {
            questionLabel.text = "Do you want to challenge the vampire lord to a one on one duel, or use a secret weapon?"
            option1Button.setTitle("Challenge to a duel", for: .normal)
            option1Button.removeTarget(nil, action: nil, for: .allEvents)
            option1Button.addTarget(self, action: #selector(option22Tapped), for: .touchUpInside)
            option2Button.setTitle("Use secret weapon", for: .normal)
            option2Button.removeTarget(nil, action: nil, for: .allEvents)
            option2Button.addTarget(self, action: #selector(option23Tapped), for: .touchUpInside)
        }

        @objc private func option22Tapped() {
        let outcome = Outcome.win("You successfully found the hidden treasure and became wealthy beyond your wildest dreams.")
        showOutcome(outcome)
        }
        
        @objc private func option23Tapped() {
            let outcome = Outcome.win("You successfully defeated the dragon and saved the town.")
            showOutcome(outcome)
        }
        
        @objc private func option24Tapped() {
            let outcome = Outcome.lose("The dragon burned your village to the ground.")
            showOutcome(outcome)
        }
        
        @objc private func option25Tapped() {
            let outcome = Outcome.lose("You were burned alive by the dragon.")
            showOutcome(outcome)
        }
        
    private func showOutcome(_ outcome: Outcome) {
        switch outcome {
        case .win(let message):
            let alertController = UIAlertController(title: "You Win!", message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
                self?.showRestartQuestion()
            }
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
        case .lose(let message):
            let alertController = UIAlertController(title: "You Lose!", message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
                self?.showRestartQuestion()
            }
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
        }
    }

    private func showRestartQuestion() {
        questionLabel.text = "Restart game?"
        option1Button.setTitle("Yes", for: .normal)
        option1Button.removeTarget(nil, action: nil, for: .allEvents)
        option1Button.addTarget(self, action: #selector(restartGame), for: .touchUpInside)
        option2Button.setTitle("No", for: .normal)
        option2Button.removeTarget(nil, action: nil, for: .allEvents)
        option2Button.addTarget(self, action: #selector(closeGame), for: .touchUpInside)
    }

    @objc private func restartGame() {
        setUpInitialQuestion()
    }

    @objc private func closeGame() {
        dismiss(animated: true, completion: nil)
    }
    
}
