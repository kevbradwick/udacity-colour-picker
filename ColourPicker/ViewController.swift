//
//  ViewController.swift
//  ColourPicker
//
//  Created by Kevin Bradwick on 03/04/2015.
//  Copyright (c) 2015 KodeFoundry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colourView: UIView!
    
    override func viewDidLoad() {
        colourView.layer.borderColor = UIColor.blackColor().CGColor
        colourView.layer.borderWidth = 1.0
        updateColourView()
    }
    
    @IBAction func sliderDidChange(sender: UISlider) {
        println("Red: \(redSlider.value) Green: \(greenSlider.value) Blue: \(blueSlider.value)")
        updateColourView()
    }
    
    func updateColourView() {

        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        self.colourView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

