//
//  MoodEntryViewController.swift
//  Moody
//
//  Created by George Du on 30/06/16.
//  Copyright © 2016 Quotidian Studios. All rights reserved.
//

import UIKit

class MoodEntryViewController: UIViewController {

    @IBOutlet var moodTextLabel : UILabel!

    var moodText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        moodTextLabel.text = "\(moodText) Want to say why?"
    }
}
