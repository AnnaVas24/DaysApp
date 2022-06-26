//
//  ViewController.swift
//  DaysApp
//
//  Created by Vasichko Anna on 25.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    private var numberOfDays = 0
   
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let calendar = Calendar.current
        
        let currentDate = calendar.startOfDay(for: Date.now)
        let dateOfBirth = calendar.startOfDay(for: sender.date)
        
        let days = calendar.dateComponents([.day], from: dateOfBirth, to: currentDate)
        numberOfDays = days.day ?? 0
    }
    
    @IBAction func resultButtonPressed(_ sender: UIButton) {
        infoLabel.text = "You have enjoyed your life for \(numberOfDays) days"
    }
    
}

