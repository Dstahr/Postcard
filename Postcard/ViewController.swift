//
//  ViewController.swift
//  Postcard
//
//  Created by David Stahr on 2/3/15.
//  Copyright (c) 2015 ___dstahr___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLable: UILabel!
    @IBOutlet weak var nameLable: UILabel!
    
    @IBOutlet weak var enterNameTextFeild: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sentMailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //comnet to test git hub. 
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLable.hidden = false
        messageLable.text = enterMessageTextField.text
        messageLable.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        nameLable.hidden = false
        nameLable.text = enterNameTextFeild.text
        nameLable.textColor = UIColor.blueColor()
        enterNameTextFeild.text = ""
        enterNameTextFeild.resignFirstResponder()
        
        
        
        sentMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

