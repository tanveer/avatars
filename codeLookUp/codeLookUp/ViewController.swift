//
//  ViewController.swift
//  codeLookUp
//
//  Created by Tanveer Bashir on 11/6/14.
//  Copyright (c) 2014 Tanveer Bashir. All rights reserved.
//

// test case 
// Make: konica minolta
// Model: c220
// Code: c3001
// Should update the textView with value of "Tray 4 jammed"

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate{
    
    @IBOutlet weak var makeInputField: UITextField!
    @IBOutlet weak var modelInputField: UITextField!
    @IBOutlet weak var codeInputField: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var errorDescriptionTextView: UITextView!
    
    var errorMessage = "Pleaee enter all fields"
    
  
    //Kyocera data
    let kyoceraDictionary = [
        "1000": "Check ADF",
        "2000": "Check Fuser unit",
        "3000": "Check 2nd tray"]
    let kyoceraModels = ["TA3500", "TA4500", "TA6500"]
    let kyoceraErrorCodes = ["2000", "1000", "3000"]
    
    //Konica data
    let konicaModels = ["C220","C280",
                        "C360","C452",
                        "C552","C652",
                        "C224","C284","C364"]
    
    let errorCodes = ["C1001", "C2001", "C3001"]
    
    let konicaErrorCodes = [
        "C2001": "Tray 2 feeder up down abnormality",
        "C1001":"Tray 3 jamming",
        "C3001": "Tray 4 jammed"]
    
    //Manufacturers brand
    let kyocera = "Kyocera"
    let konica = "Konica Minolta"
    let panasonic = "Panasonic"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorDescriptionTextView.text = "Hello there!"
        
    }
    
    //Searching all database
    func searcCodes(mk: String, md: String, cd: String) -> String{
        
        //local Variables
        var make = mk
        var model = md
        var code = cd
        
        //converting arrays to lowercaseString
        let lowerKonicaErrorCodes = errorCodes.map {$0.lowercaseString}
        let lowerKyoceraErrorCodes = kyoceraErrorCodes.map {$0.lowercaseString}
        let lowerKonicaModel = konicaModels.map {$0.lowercaseString}
        let lowerKyoceraModel = kyoceraModels.map {$0.lowercaseString}
        
        //checking for user input
        if make == konica.lowercaseString{
            for(var i = 0; i < lowerKonicaModel.count; i++){
                if model == lowerKonicaModel[i]{
                    for(var j = 0; j < lowerKonicaErrorCodes.count; j++){
                        if code == lowerKonicaErrorCodes[j]{
                            var cd = lowerKonicaErrorCodes[j].capitalizedString
                            return "\(konicaErrorCodes[cd]!)"
                        }
                    }
                }
            }
        }
        else if(make == kyocera.lowercaseString){
            for(var k = 0; k < lowerKyoceraModel.count; k++){
                if model  == lowerKyoceraModel[k]{
                    for(var l = 0; l < lowerKyoceraErrorCodes.count; l++){
                        if code == lowerKyoceraErrorCodes[l]{
                            return "\(kyoceraDictionary[lowerKyoceraErrorCodes[l]]!)"
                        }
                    }
                }
            }
        }
        return "No data found"
    }

    //Search action
    @IBAction func searchButtonPressed(sender: UIButton) {
        var copierMake = makeInputField.text.lowercaseString
        var copierModel = modelInputField.text.lowercaseString
        var errorCode = codeInputField.text.lowercaseString
        errorLabel.hidden = false
        
        if copierMake == "" || copierModel == "" || errorCode == "" {
            errorLabel.text = errorMessage
        }else{
            errorLabel.hidden = true
        }
    
        
        errorDescriptionTextView.text = searcCodes(copierMake,md: copierModel,cd: errorCode)
        
    }
    
    //Clear all fields
    @IBAction func clearButtonPressed(sender: UIButton) {
        makeInputField.text = ""
        modelInputField.text = ""
        codeInputField.text = ""
        errorLabel.text = ""
        if(errorDescriptionTextView.text == "" || errorDescriptionTextView.text != ""){
            errorDescriptionTextView.text = "Hello there"
        }
    
    }
    
}
        




