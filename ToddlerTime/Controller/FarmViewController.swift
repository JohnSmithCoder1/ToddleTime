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
    let cards = CardBank()
    
    @IBAction func touchCard(_ sender: AnyObject) {
        guard let card = sender as? UIButton else { return }
        
        switch card.tag {
        case 100:
            flipCard(withImage: cards.allCards[0].image, on: card)
        case 101:
            flipCard(withImage: cards.allCards[1].image, on: card)
        case 102:
            flipCard(withImage: cards.allCards[2].image, on: card)
        case 103:
            flipCard(withImage: cards.allCards[3].image, on: card)
        case 104:
            flipCard(withImage: cards.allCards[4].image, on: card)
        case 105:
            flipCard(withImage: cards.allCards[5].image, on: card)
        default:
            print("unkown card touched")
            return
        }
    }
    
    
    //MARK: - Function Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
        
        setupButtonStyle(button: (view.viewWithTag(100) as? UIButton)!)
        setupButtonStyle(button: (view.viewWithTag(101) as? UIButton)!)
        setupButtonStyle(button: (view.viewWithTag(102) as? UIButton)!)
        setupButtonStyle(button: (view.viewWithTag(103) as? UIButton)!)
        setupButtonStyle(button: (view.viewWithTag(104) as? UIButton)!)
        setupButtonStyle(button: (view.viewWithTag(105) as? UIButton)!)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        playSound(forObject: "pageTurnSound")
        resetCards()
    }
    
    
    //MARK: - Functions
    @objc func appDidEnterBackground() {
        resetCards()
        cards.resetCards()
    }
    
    func flipCard(withImage image: UIImage, on button: UIButton) {
        if button.currentImage == image {
            playSound(forObject: "flipCardSound")
            button.setImage(nil, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
        } else {
            button.setImage(image, for: .normal)
            
            for i in 0...5 {
                if image == cards.allCards[i].image {
                    playSound(forObject: cards.allCards[i].sound)
                }
            }
        }
    }
    
    func resetCards() {  // move this function to card.swift
        let cards = [view.viewWithTag(100) as? UIButton,
                     view.viewWithTag(101) as? UIButton,
                     view.viewWithTag(102) as? UIButton,
                     view.viewWithTag(103) as? UIButton,
                     view.viewWithTag(104) as? UIButton,
                     view.viewWithTag(105) as? UIButton]
        
        for card in cards {
            card?.setImage(nil, for: .normal)
            card?.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
        }
    }
    
    func setupButtonStyle(button: UIButton) {  // change this to setupCardStyle and move to Card.swift?
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4.5, height: 4.5)
        button.layer.shadowRadius = 4.5
        button.layer.shadowOpacity = 1
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






