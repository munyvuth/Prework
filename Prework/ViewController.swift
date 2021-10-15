//
//  ViewController.swift
//  Prework
//
//  Created by Muny Vuth on 10/15/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: UISlider) {
        //Get bill amount from text field
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = Int(sender.value)
        tipLabel.text = String(tipPercentage) + "%"
        
        //Calculate tip and total cost
        let tip = (Double(tipPercentage) / 100) * bill
        let total = bill + tip
        
        //Update the tip label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update the total label
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
    
}

