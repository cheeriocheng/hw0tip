//
//  ViewController.swift
//  tip
//
//  Created by Xu, Cheng on 10/19/15.
//  Copyright (c) 2015 sansserif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   //create name for UI components
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
   
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
//        println("user changed input")
        
        
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipChoice = tipControl.selectedSegmentIndex
        var tipP = tipPercentages[tipChoice]
        
        //var billAmount = billField.text.bridgeToObjectiveC().doubleValue
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount*tipP
        var total = tip+billAmount
        
        
        // this will be integers...
//        tipLabel.text = "$\(tip)"
//        totalLable.text = "$\(total)"
        
        tipLabel.text = String(format:"$%.2f", tip);
        totalLabel.text = String(format:"$%.2f", total);
        
    }

    @IBAction func onTap(sender: AnyObject) {
//        println("tap")
        view.endEditing(true)
        
    }
}

