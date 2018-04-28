//
//  MenuViewController.swift
//  DoorNumberOne
//
//  Created by Banana Viking on 4/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var farmButton: UIButton!
    @IBOutlet weak var marketButton: UIButton!
    @IBOutlet weak var numbersButton: UIButton!
    
    override func viewDidLoad() {
        farmButton.layer.cornerRadius = 4.5
        farmButton.layer.shadowColor = UIColor.black.cgColor
        farmButton.layer.shadowOffset = CGSize(width: 4.5, height: 4.5)
        farmButton.layer.shadowRadius = 4.5
        farmButton.layer.shadowOpacity = 1.0
        
        marketButton.layer.cornerRadius = 4.5
        marketButton.layer.shadowColor = UIColor.black.cgColor
        marketButton.layer.shadowOffset = CGSize(width: 4.5, height: 4.5)
        marketButton.layer.shadowRadius = 4.5
        marketButton.layer.shadowOpacity = 1.0
        
        numbersButton.layer.cornerRadius = 4.5
        numbersButton.layer.shadowColor = UIColor.black.cgColor
        numbersButton.layer.shadowOffset = CGSize(width: 4.5, height: 4.5)
        numbersButton.layer.shadowRadius = 4.5
        numbersButton.layer.shadowOpacity = 1.0

        super.viewDidLoad()
    }
}

extension UIView {
    
    // adds the following settings in IB for all views under attributes inspector
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
}
