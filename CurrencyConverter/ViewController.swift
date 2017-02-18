//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Ruben D on 2/16/17.
//  Copyright © 2017 Ruben. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!){
            dollarAmount = amount
        }
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0
        
    }
    
    @IBAction func clear(_ sender: UIButton) {
        inputTextField.text = ""
        dollarAmount = 0.0        }
    
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

