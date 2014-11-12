//
//  ViewController.swift
//  errorCodes
//
//  Created by Tanveer Bashir on 11/6/14.
//  Copyright (c) 2014 Tanveer Bashir. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate{

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var errorDescriptionField: UITextView!
    
    @IBOutlet var modelArray: UIPickerView!
    var modelsArray = ["Konica Minolta", "Kyocera", "Panasonic","Canon","Toshiba","Sharp"]
    
    var errorCodes = ["c2020":"Jamming in tray2", "c1001": "Jamming in 1st paper tray"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int

    @IBAction func searchErrorCodePressed(sender: UIButton) {
        var searchQuery = searchBar.text
        errorDescriptionField.text = errorCodes[searchQuery]
    }

}

