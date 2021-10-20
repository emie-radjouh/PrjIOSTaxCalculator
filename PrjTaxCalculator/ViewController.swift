//
//  ViewController.swift
//  PrjTaxCalculator
//
//  Created by Emie Radjouh on 2021-09-17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.isHidden = true;
        // Do any additional setup after loading the view.
    }

    @IBAction func txtTaxeChanged(_ sender: Any) {
        lblResult.isHidden = true
    }
    @IBAction func txtPriceChanged(_ sender: Any) {
        lblResult.isHidden = true
    }
    
    @IBAction func btnCalculate(_ sender: Any) {
        lblResult.isHidden = false
        
        guard let price : Double = Double(txtPrice.text!), let taxe : Double = Double(txtTaxe.text!)else{
            Toast.ok(view: self, title: "Review Input", message: "User input should be an integer")
            return
        }
        let taxeNotPercentage = (taxe)/100
        var result = (taxeNotPercentage * price) + price
        
        result = round(result*100)/100
        lblResult.text = "With the price of \(price)$, and the taxe of \(taxe)%, the total is \(result)$"
    }
    
    @IBOutlet weak var txtTaxe: UITextField!
    @IBOutlet weak var txtPrice: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
}

