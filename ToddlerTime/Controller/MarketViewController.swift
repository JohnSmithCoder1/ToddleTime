//
//  MarketViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 4/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit

class MarketViewController: UIViewController {
    
    let cardBank = CardBank()
    
    @IBAction func touchCard(_ sender: AnyObject) {
        guard let card = sender as? UIButton else { return }
        
        for i in 6...11 {
            if card.tag == i + 1 {  // convert index to tag which start at 1
                if let image = UIImage(named: cardBank.cards[i].image) {
                    cardBank.flipCard(withImage: image, on: card)
                }
            }
        }
    }
    
    //MARK: - Function Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground),
                                               name: .UIApplicationDidEnterBackground, object: nil)
        
        for i in 7...12 {
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
    
    func resetCards() {  
        for i in 7...12 {
            if let card = view.viewWithTag(i) as? UIButton {
                card.setImage(nil, for: .normal)
                card.backgroundColor = cardBank.cards[i - 1].color  // convert tag to index
            }
        }
    }
}
