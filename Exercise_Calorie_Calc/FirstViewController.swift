//
//  FirstViewController.swift
//  Exercise_Calorie_Calc
//
//  Created by user150447 on 1/31/19.
//  Copyright © 2019 user150447. All rights reserved.
//

import UIKit

var userAge: Double?
var userWeight: Double?
var userGender: String = "Female"


class FirstViewController: UIViewController, UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.yourAge.delegate = self
        self.yourWeight.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var yourAge: UITextField!
    
    @IBOutlet weak var yourWeight: UITextField!
    
    @IBOutlet weak var genderButton: UISegmentedControl!
    
    @IBAction func genderButton(_ sender: Any) {
        switch genderButton.selectedSegmentIndex {
        case 0:
          userGender = "Female"
        case 1:
          userGender = "Male"
        default:
           return
        }
    }
    // userWeight is in pounds, so users must input their weight in pounds
    
    @IBAction func savePersonalInfo(_ sender: Any) {
        userWeight = Double(yourWeight.text!)
        userAge = Double(yourAge.text!)
    }
    // function to hide the virtual keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     self.yourWeight.resignFirstResponder()
     self.yourAge.resignFirstResponder()
        return true
    
        
    }
    

}

