//
//  ViewController.swift
//  TrafficLigths
//
//  Created by Sergey Efimov on 14.12.2021.
//

import UIKit

enum MyLights {
    case red
    case yellow
    case green
}


class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private let offLight: CGFloat = 0.3
    private let onLight: CGFloat = 1.0
    
    private var nextLight = MyLights.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = offLight
        yellowLightView.alpha = offLight
        greenLightView.alpha = offLight
        
        redLightView.layer.cornerRadius = 90
        yellowLightView.layer.cornerRadius = 90
        greenLightView.layer.cornerRadius = 90
        
        startButton.layer.cornerRadius = 20
        
        startButton.setTitle("START", for: .normal)
    }

    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
    
        switch nextLight {
        case .red:
            redLightView.alpha = onLight
            greenLightView.alpha = offLight
            nextLight = MyLights.yellow
        case .yellow:
            yellowLightView.alpha = onLight
            redLightView.alpha = offLight
            nextLight = MyLights.green
        case .green:
            greenLightView.alpha = onLight
            yellowLightView.alpha = offLight
            nextLight = MyLights.red
        }
        
    }
    
    
}

