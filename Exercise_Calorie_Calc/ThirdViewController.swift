//
//  ThirdViewController.swift
//  Exercise_Calorie_Calc
//
//  Created by user150447 on 1/31/19.
//  Copyright © 2019 user150447. All rights reserved.
//


import UIKit

var caloriesBurned: Double?

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var calories: UILabel!
    
    @IBAction func calcCalories(_ sender: Any) {
    
    switch userGender {
    // formula for burned calories for females
    case "Female":
      caloriesBurned = ((userAge!*0.074)-(userWeight!*0.05741)+(userHeartRate!*0.4472)-20.4022)*userExerciseTime!/4.184
    // formula for burned calories for males
    case "Male":
      caloriesBurned = ((userAge!*0.2017)-(userWeight!*0.09036)+(userHeartRate!*0.6309)-55.0969)*userExerciseTime!/4.184
    default:
        return
    }
        calories.text = String(Int(caloriesBurned!))+" calories burned"
    }
    
    
}
