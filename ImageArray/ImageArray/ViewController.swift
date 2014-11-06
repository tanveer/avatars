//
//  ViewController.swift
//  ImageArray
//
//  Created by Tanveer Bashir on 11/2/14.
//  Copyright (c) 2014 Tanveer Bashir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageDisplayView: UIImageView!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var styleLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var searchAvatar: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
   
    var avatarArray:[Avatars] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        // Avatar objects
        let avatar1 = Avatars()
        avatar1.character = "Ginger girl"
        avatar1.age = 10
        avatar1.style = "Ginger Garlic"
        avatar1.image = UIImage(named: "avatar_ginger_girl.png")
        
        let avatar2 = Avatars()
        avatar2.character = "Hoody guy"
        avatar2.age = 5
        avatar2.style = "Under the hood"
        avatar2.image = UIImage(named: "avatar_hoody_guy.png")
        
        let avatar3 = Avatars()
        avatar3.character = "Mexican guy"
        avatar3.age = 12
        avatar3.style = "Mexican style"
        avatar3.image = UIImage(named: "avatar_mexican_guy.png")
        
        let avatar4 = Avatars()
        avatar4.character = "Smart guy"
        avatar4.age = 6
        avatar4.style = "Smarty pants"
        avatar4.image = UIImage(named: "avatar_smart_guy.png")
        
        let avatar5 = Avatars()
        avatar5.character = "Basketball player"
        avatar5.age = 14
        avatar5.style = "Dunk! Dunk!"
        avatar5.image = UIImage(named: "avatar_basketball_guy.png")
        
        let avatar6 = Avatars()
        avatar6.character = "Hipster man"
        avatar6.age = 16
        avatar6.style = "Hip hip hurray!!"
        avatar6.image = UIImage(named: "avatar_hipster_guy.png")
        
        let avatar7 = Avatars()
        avatar7.character = "Nerd"
        avatar7.age = 8
        avatar7.style = "Nerdy Geek"
        avatar7.image = UIImage(named: "avatar_nerd_guy.png")
        
        self.avatarArray += [avatar1,avatar2,avatar3,avatar4,avatar5,avatar6,avatar7]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeImagesButtonPressed(sender: AnyObject)
    {
        switchSearch()
        searchAvatar.resignFirstResponder()
    }
    
    func switchSearch(){
        switch searchAvatar.text {
        case avatarArray[0].character:
            //displaying random character on click
            imageDisplayView.image = avatarArray[0].image
            characterNameLabel.text = avatarArray[0].character
            ageLabel.text = "\(avatarArray[0].age)"
            styleLabel.text = avatarArray[0].style
        case avatarArray[1].character:
            imageDisplayView.image = avatarArray[1].image
            characterNameLabel.text = avatarArray[1].character
            ageLabel.text = "\(avatarArray[1].age)"
            styleLabel.text = avatarArray[1].style
        case avatarArray[2].character:
            imageDisplayView.image = avatarArray[2].image
            characterNameLabel.text = avatarArray[2].character
            ageLabel.text = "\(avatarArray[2].age)"
            styleLabel.text = avatarArray[2].style
        case avatarArray[3].character:
            imageDisplayView.image = avatarArray[3].image
            characterNameLabel.text = avatarArray[3].character
            ageLabel.text = "\(avatarArray[3].age)"
            styleLabel.text = avatarArray[3].style
        case avatarArray[4].character:
            imageDisplayView.image = avatarArray[4].image
            characterNameLabel.text = avatarArray[4].character
            ageLabel.text = "\(avatarArray[4].age)"
            styleLabel.text = avatarArray[4].style
        case avatarArray[5].character:
            imageDisplayView.image = avatarArray[5].image
            characterNameLabel.text = avatarArray[5].character
            ageLabel.text = "\(avatarArray[5].age)"
            styleLabel.text = avatarArray[5].style
        case avatarArray[6].character:
            imageDisplayView.image = avatarArray[6].image
            characterNameLabel.text = avatarArray[6].character
            ageLabel.text = "\(avatarArray[6].age)"
            styleLabel.text = avatarArray[6].style
        default:
            errorLabel.text = "Sorry no match found!"
        }
    }
}

