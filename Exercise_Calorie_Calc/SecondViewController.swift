//
//  SecondViewController.swift
//  Exercise_Calorie_Calc
//
//  Created by user150447 on 1/31/19.
//  Copyright © 2019 user150447. All rights reserved.
//

import UIKit

var userExerciseTime: Double?
var userHeartRate: Double?


class SecondViewController: UIViewController, UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseTime.delegate = self
        self.avgHeartRate.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var exerciseTime: UITextField!
    
    @IBOutlet weak var avgHeartRate: UITextField!
    
    @IBAction func saveExerciseInfo(_ sender: Any) {
        
        userExerciseTime = Double(exerciseTime.text!)
        userHeartRate = Double(avgHeartRate.text!)
    }
    // function to hide the virtual keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        self.exerciseTime.resignFirstResponder()
        self.avgHeartRate.resignFirstResponder()
        return true
    }
    

}

