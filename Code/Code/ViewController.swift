//
//  ViewController.swift
//  Code
//
//  Created by Tanveer Bashir on 11/7/14.
//  Copyright (c) 2014 Tanveer Bashir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var makeInputField: UITextField!
    @IBOutlet weak var modelInputField: UITextField!
    @IBOutlet weak var errorCodeInputField: UITextField!
    @IBOutlet weak var errorDescriptionView: UITextView!
    
    var modelArray = ["C220","C360","C280", "C452 552 652", "C224e,284e,364e","C224,284,264","C454e,554e","C654,754"]
    var makeArray = ["Konica Minolta","Kyocea Mita", "Canon"]
    var make = ""
    var model = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func clearButtonPressed(sender: UIButton)
    {
        makeInputField.text = ""
        modelInputField.text = ""
        errorDescriptionView.text = ""
    }
    
    @IBAction func searchButtonPressed(sender: UIButton) {
        
        make = makeInputField.text
        model = modelInputField.text
        
        for(var i = 0; i < makeArray.count; i = i + 1){
            for(var j = 0; j < modelArray.count; j++){
                if{
                        errorDescriptionView.text  = "Make:\(makeArray[i]) Model:\(modelArray[j])"
                    
                }
            }
        }
        makeInputField.resignFirstResponder()
        modelInputField.resignFirstResponder()
    }
}