//
//  ViewController.swift
//  ColourChanger
//
//  Created by Caroline Davis on 14/07/2016.
//  Copyright © 2016 Caroline Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colourView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func changeColourComponent(sender: AnyObject) {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redSlider == nil {
            return
        }
        
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        colourView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    
    }

}

