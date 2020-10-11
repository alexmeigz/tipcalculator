//
//  ViewController.swift
//  tipcalculator
//
//  Created by Alex Mei on 10/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipChoice: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func onChange(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipChoice.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

