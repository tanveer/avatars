//
//  ViewController.swift
//  TimeTrackerApp
//
//  Created by Tanveer Bashir on 11/8/14.
//  Copyright (c) 2014 Tanveer Bashir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var timeLabel: UILabel!

    var timer = NSTimer()
    var timerArray: [String] = []
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.startButton.layer.cornerRadius = 20.0
        self.stopButton.layer.cornerRadius = 20.0
        self.stopButton.hidden = true
    
    }

    @IBAction func stopButtonPressed(sender: UIButton)
    {
        self.timer.invalidate()
        
    }

    @IBAction func startButtonPressed(sender: UIButton){
        
        self.timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector:"updateTimerLabel", userInfo: NSDate(), repeats: true)
        stopButton.hidden = false
        
    }

    
    func updateTimerLabel(){
    
        var timeElapsed = -(self.timer.userInfo as NSDate).timeIntervalSinceNow
    
        if(timeElapsed < 60){
            timeLabel.text = String(format: "%.0f", timeElapsed)
        }else{
            timeLabel.text = String(format: "%.0f:%02f", timeElapsed / 60 , timeElapsed % 60)
        }
        
    }
    
     override func prepareForSegue(segue: UIStoryboardSegue? , sender: AnyObject?)
     {
        stopButton.hidden = true
        startButton.hidden = false
        var times = timeLabel.text
        timerArray.append(times!)
        timeLabel.text = "0"
        let nextView = segue!.destinationViewController as savedTimerTableViewController
        nextView.timesArray = timerArray
        
     }
    
}

