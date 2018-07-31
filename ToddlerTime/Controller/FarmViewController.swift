//
//  FarmViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 4/12/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class FarmViewController: UIViewController {
    
    let cardBank = CardBank()
    
    @IBAction func touchCard(_ sender: AnyObject) {
        guard let card = sender as? UIButton else { return }
        
        for i in 0...5 {
            if card.tag == i + 1 {
                flipCard(withImage: cardBank.allCards[i].image, on: card)
            }
        }
    }
    
    //MARK: - Function Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
        
        for i in 1...6 {
            cardBank.setupCardStyle(view: view.viewWithTag(i)!)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        cardBank.playSound(forObject: "pageTurnSound")
        resetCards()
    }
    
    //MARK: - Functions
    @objc func appDidEnterBackground() {
        resetCards()
    }
    
    func flipCard(withImage image: UIImage, on button: UIButton) {
        if button.currentImage == image {
            cardBank.playSound(forObject: "flipCardSound")
            button.setImage(nil, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
        } else {
            button.setImage(image, for: .normal)
            
            for i in 0...5 {
                if image == cardBank.allCards[i].image {
                    cardBank.playSound(forObject: cardBank.allCards[i].sound)
                }
            }
        }
    }
    
    func resetCards() {  // move this function to card.swift
        for i in 1...6 {
            if let card = view.viewWithTag(i) as? UIButton {
                card.setImage(nil, for: .normal)
                card.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
            }
        }
    }
}






