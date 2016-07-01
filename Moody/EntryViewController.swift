//
//  EntryViewController.swift
//  Moody
//
//  Created by George Du on 24/06/16.
//  Copyright © 2016 Quotidian Studios. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {
/*
    @IBOutlet var happyButton : UIButton!
    @IBOutlet var sadButton : UIButton!
    @IBOutlet var madButton : UIButton!
    @IBOutlet var unsureButton : UIButton!
 */

    var moodText : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chooseMood(sender: UIButton) {
        switch(sender.tag) {
        case 69:
            self.moodText = "Yay!"
        case 70:
            self.moodText = "Aww."
        case 71:
            self.moodText = "Yikes!"
        case 72:
            self.moodText = "Hmm."
        default:
            self.moodText = "Error"
        }
        performSegueWithIdentifier("chooseMood", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "chooseMood" {
            if let destinationVC = segue.destinationViewController as? MoodEntryViewController {
                destinationVC.moodText = self.moodText
            }
        }
    }
}

