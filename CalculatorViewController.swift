//
//  ViewController.swift

import UIKit

class CalculatorViewController: UIViewController {

    //Connecting UI elements to code.
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    @IBOutlet weak var splitStepper: UIStepper!
    
    
    
    //Functions for buttons.
    @IBAction func tipChanged(_ sender: UIButton) {
        
        //Making it so that when a user clicks a selected tip, the button the other buttons are deselected.
        zeroPctButton.isSelected = false
        twentyPctButton.isSelected = false
        tenPctButton.isSelected = false
        sender.isSelected = true
        
        
        //Using an if statement to print values based upon which button is selected. 
        if twentyPctButton.isSelected == true {
            print("0.2")
        }
        else if tenPctButton.isSelected == true {
            print("0.1")
        }
        else if zeroPctButton.isSelected == true {
            print("0.0")
        }
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
       // let res = splitStepper.value * splitNumberLabel.text
       // var result = Double(self.splitNumberLabel.text) * splitStepper.value
        
        let billTotal = Double(splitNumberLabel.text!) ?? 0.0
        
        var result = billTotal + splitStepper.stepValue
       
        
        print(result)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        
    }
    


}

