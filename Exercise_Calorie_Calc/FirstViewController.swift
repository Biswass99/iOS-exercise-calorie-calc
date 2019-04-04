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
var userWeightUnit: String = "Pounds"


class FirstViewController: UIViewController, UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.yourAge.delegate = self
        self.yourWeight.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var yourAge: UITextField!
    
    @IBOutlet weak var yourWeight: UITextField!
    
    @IBOutlet weak var weightButton: UISegmentedControl!
    
    @IBAction func weightButton(_ sender: Any) {
        switch weightButton.selectedSegmentIndex {
        case 0:
            userWeightUnit = "Pounds"
        case 1:
            userWeightUnit = "Kilos"
        default:
            return
        }
    }
    
    
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
    // formula uses userWeight in pounds
    // Weight entered by user must be converted to pounds
    
    @IBAction func savePersonalInfo(_ sender: Any) {
        
        
        
          if let weightNumber = Double(yourWeight.text!) {
            switch userWeightUnit {
            case "Pounds":
                // user entered weight is in pounds
                
                userWeight = Double(weightNumber)
                
                
            case "Kilos":
                // user entered weight is in kilograms
                // convert weight in kilograms to pounds
                
                userWeight = Double(weightNumber * 2.204)
                
            default:
                return
            } // end switch userWeightUnit
        }// end if

        userAge = Double(yourAge.text!)
    }
    // function to hide the virtual keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     self.yourWeight.resignFirstResponder()
     self.yourAge.resignFirstResponder()
        return true
    
        
    }
    

}

