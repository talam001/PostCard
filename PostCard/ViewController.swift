//
//  ViewController.swift
//  PostCard
//
//  Created by Tanweer Alam on 2/14/15.
//  Copyright (c) 2015 Tanweer Alam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        //Changes for name label
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        //Changes for message label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterNameTextField.text = ""
        //enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        //enterMessageTextField.resignFirstResponder()
        self.view.endEditing(true)
        
        mailButton.setTitle("Mail Send", forState: UIControlState.Normal)
        
    }
    
}

