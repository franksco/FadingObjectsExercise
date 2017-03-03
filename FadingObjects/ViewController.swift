//
//  ViewController.swift
//  FadingObjects
//
//  Created by Cory Franks on 2/28/17.
//  Copyright © 2017 Cory Franks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var label: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    
    @IBOutlet var button: UIButton!
    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var switchObject: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func fideIn(_ sender: Any) {
        
        UIView.animate(withDuration: 2, animations: { //code snippet provides a animated effect when fideIn button is clicked
        
            self.label.alpha = 1 //this code snippet here displays label at 100% opaqueness
            self.slider.value = 1 //allows the UI slider to keep up with the set end value for the alpha "it doesnt show the slider slowly going up or down to match the animation.
        })
        
    }
    @IBAction func fadeOut(_ sender: Any) {
        
        UIView.animate(withDuration: 2, animations: {
            
            self.label.alpha = 0 //this code snippet here displays label at 0% opaqueness
            self.slider.value = 0
            
        })
        
    }

    @IBAction func alphaSlider(_ sender: Any) {
        
        label.alpha = CGFloat(slider.value) //allows us to use a UI slider to change the alpha "opaqueness" of the label
        
    }

    @IBAction func hide(_ sender: Any) {
        
        label2.isHidden = true //allows us to hide label when button is clicked
        
    }
    @IBAction func reveal(_ sender: Any) {
        
        label2.isHidden = false//allows us to hide label when button is clicked
        
    }
    @IBAction func amIHidden(_ sender: Any) {
        
        if label2.isHidden == true {
            label3.text = "Object is hidden"
        } else {
            label3.text = "Object is revealed"
        }
        //allows us to verify if label2 is in fact hidden but saying if label2 has been set to hide then say yes it is, and vice versa if not.
    }
    
    @IBAction func enable(_ sender: Any) {
        
        button.isEnabled = true
        segmentControl.isEnabled = true
        switchObject.isEnabled = true
        
    }//this button enables all three items
    
    @IBAction func disable(_ sender: Any) {
        
        button.isEnabled = false
        segmentControl.isEnabled = false
        switchObject.isEnabled = false
        
    }//this button disables all three items
    
    @IBAction func amIEnabled(_ sender: Any) {
        
        if button.isEnabled == true {
            label4.text = "Objects are enabled"
        } else {
            label4.text = "Objects are disabled"
        }
    } //this button checks to see if previous items are enabled or disabled and tells me if they are or not.
    
}

