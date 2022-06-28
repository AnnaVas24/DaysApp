//
//  ViewController.swift
//  DaysApp
//
//  Created by Vasichko Anna on 25.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    private var numberOfDays = ""
   
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction func resultButtonPressed() {
        infoLabel.text = "Вы наслаждались жизнью \(numberOfDays)"
    }
    
}

