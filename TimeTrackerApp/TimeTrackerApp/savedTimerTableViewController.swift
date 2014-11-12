//
//  savedTimerTableViewController.swift
//  TimeTrackerApp
//
//  Created by Tanveer Bashir on 11/8/14.
//  Copyright (c) 2014 Tanveer Bashir. All rights reserved.
//

import UIKit

class savedTimerTableViewController: UITableViewController {
    var timesArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()        
       
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "blurPurple"))
        
        
    }

    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return timesArray.count
    }
  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("timeCell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        cell.textLabel.text = timesArray[indexPath.row]
        cell.backgroundColor = UIColor.clearColor()

        return cell
    }
    

}
