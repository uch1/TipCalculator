//
//  TipViewController.swift
//  TipCalculator
//
//  Created by Uchenna  on 7/3/17.
//  Copyright © 2017 Uchenna Aguocha. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    @IBOutlet weak var tipAmountField: UITextField!
    @IBOutlet weak var totalAmountField: UITextField!
    
    
    @IBAction func calculateTip(_ sender: Any) {
    
        if let billAmount = Double(billAmountField.text!) {
            var tipPercentage = 0.0
            
            switch tipSelector.selectedSegmentIndex {
            case 0: tipPercentage = 0.15
            case 1: tipPercentage = 0.18
            case 2: tipPercentage = 0.20
            default: break
            }
            
            let roundedBillAmount = round(100 * billAmount) / 100
            let tipAmount = roundedBillAmount * tipPercentage
            let roundedTipAmount = round(100 * tipAmount) / 100
            let totalAmount = roundedBillAmount + roundedTipAmount
            
            if (!billAmountField.isEditing) {
                billAmountField.text = String(format: "%.2f", roundedBillAmount)
            }
            
            tipAmountField.text = String(format: "%.2f", roundedTipAmount)
            totalAmountField.text = String(format: "%.2f", totalAmount)
            }
//        else {
//            // show error
//            billAmountField.text = ""
//            tipAmountField.text = ""
//            totalAmountField.text = ""
//        }
    
    
    }
    
    
    
//    enum tipPercentage: Int {
//        case fifteenPercent
//        case eighteenPercent
//        case twentyPercent
//    }
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func setTip(_ sender: UIButton) {
//        if segmentedControl.selectedSegmentIndex == 0 {
//            tipLabel.text = segmentedControl.titleForSegment(at: 0) // 15%
//        } else if segmentedControl.selectedSegmentIndex == 1 {
//            tipLabel.text = segmentedControl.titleForSegment(at: 1) // 13%
//        } else if segmentedControl.selectedSegmentIndex == 2 {
//            tipLabel.text = segmentedControl.titleForSegment(at: 2) // 18%
//        }
        
//        switch segmentedControl.selectedSegmentIndex {
//        case 0: tipLabel.text = segmentedControl.titleForSegment(at: 0)
//        case 1: tipLabel.text = segmentedControl.titleForSegment(at: 1)
//        case 2: tipLabel.text = segmentedControl.titleForSegment(at: 2)
//        default: break
//        }
        
//        if let tipPercent = tipPercentage(rawValue: segmentedControl.selectedSegmentIndex) {
//            switch tipPercent {
//            case .fifteenPercent: tipLabel.text = segmentedControl.titleForSegment(at: 0)
//            case .eighteenPercent: tipLabel.text = segmentedControl.titleForSegment(at: 1)
//            case .twentyPercent: tipLabel.text = segmentedControl.titleForSegment(at: 2)
//                
//            }
//        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
