//
//  ViewController.swift
//  Trafficlight
//
//  Created by Perejro on 29/10/2024.
//

import UIKit

class ViewController: UIViewController {
    var currrentIndex = -1
    var colors: [UIView] = []
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var tapButton: UIButton!
    
    func setupColorStyles() {
        colors.forEach { colorView in
            colorView.layer.cornerRadius = colorView.frame.width / 2
            colorView.alpha = 0.3
        }
    }
    
    func setupTapButtonStyles() {
        tapButton.layer.cornerRadius = 5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colors = [redLight, yellowLight, greenLight]
        setupColorStyles()
        setupTapButtonStyles()
    }
    
    @IBAction func tapButtonHandler(_ sender: UIButton) {
        if currrentIndex == -1 {
            tapButton.setTitle("NEXT", for: .normal)
        }
        
        currrentIndex+=1
        
        let index = currrentIndex % colors.count
        
        for (i, view) in colors.enumerated() {
            view.alpha = (i == index) ? 1 : 0.3
        }
    }
    
    
}

