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
    
    var player: AVAudioPlayer?
    let cardBank = CardBank()
    
    @IBAction func touchCard(_ sender: AnyObject) {
        guard let card = sender as? UIButton else { return }
        
        for i in 0...5 {
            if card.tag == i + 1 {
                flipCard(withImage: cardBank.allCards[i].image, on: card)
            }
        }
        
//        switch card.tag {
//        case 100:
//            flipCard(withImage: cards.allCards[0].image, on: card)
//        case 101:
//            flipCard(withImage: cards.allCards[1].image, on: card)
//        case 102:
//            flipCard(withImage: cards.allCards[2].image, on: card)
//        case 103:
//            flipCard(withImage: cards.allCards[3].image, on: card)
//        case 104:
//            flipCard(withImage: cards.allCards[4].image, on: card)
//        case 105:
//            flipCard(withImage: cards.allCards[5].image, on: card)
//        default:
//            print("unkown card touched")
//            return
//        }
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
        playSound(forObject: "pageTurnSound")
        resetCards()
    }
    
    
    //MARK: - Functions
    @objc func appDidEnterBackground() {
        resetCards()
        cardBank.resetCards()
    }
    
    func flipCard(withImage image: UIImage, on button: UIButton) {
        if button.currentImage == image {
            playSound(forObject: "flipCardSound")
            button.setImage(nil, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
        } else {
            button.setImage(image, for: .normal)
            
            for i in 0...5 {
                if image == cardBank.allCards[i].image {
                    playSound(forObject: cardBank.allCards[i].sound)
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
//        let cards = [view.viewWithTag(1) as? UIButton,
//                     view.viewWithTag(2) as? UIButton,
//                     view.viewWithTag(3) as? UIButton,
//                     view.viewWithTag(4) as? UIButton,
//                     view.viewWithTag(5) as? UIButton,
//                     view.viewWithTag(6) as? UIButton]
//
//        for card in cards {
//            card?.setImage(nil, for: .normal)
//            card?.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
//        }
    }
    
    func playSound(forObject: String) {
        guard let url = Bundle.main.url(forResource: forObject, withExtension: "wav") else {
            print("url not found")
            return
        }
        
        do {
            /// this codes for making this app ready to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            player?.play()  // this was player!.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
}






