//
//  ViewController.swift
//  tippyCal
//
//  Created by Kunal Desai on 5/11/16.
//  Copyright © 2016 Kunal Desai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!

    @IBOutlet weak var friendsperLabel: UILabel!
    
    
    @IBOutlet weak var friendsNumber: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }

    @IBAction func tipCalculator(sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.20, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        let friendNumber = [0.33, 0.25, 0.20]
    
        let totalF = total * friendNumber[friendsNumber.selectedSegmentIndex]
        
        
        friendsperLabel.text = String(format: "$%.2f", totalF)
    }
 
    
    
}

