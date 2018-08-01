//
//  ShapesViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 4/30/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit

class ShapesViewController: UIViewController {
    
    let cardBank = CardBank()
    
    @IBAction func touchCard(_ sender: AnyObject) {
        guard let card = sender as? UIButton else { return }
        
        for i in 18...23 {
            // i + 1 here because array starts at 0, but tags start at 1 (since a tag can't be 0)
            if card.tag == i + 1 {
                if let image = UIImage(named: cardBank.allCards[i].image) {
                    cardBank.flipCard(withImage: image, on: card)
                }            }
        }
    }
    
    //MARK: - Function Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
        
        for i in 19...24 {
            if let card = view.viewWithTag(i) {
                cardBank.setupCardStyle(view: card)
            }
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
    
    func resetCards() {  // move this function to card.swift
        for i in 19...24 {
            if let card = view.viewWithTag(i) as? UIButton {
                card.setImage(nil, for: .normal)
                card.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
            }
        }
    }
}
