//
//  ViewController.swift
//  FlightBooking
//
//  Created by phase on 2020/07/12.
//  Copyright © 2020 phase. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var departureDateButton: UIButton!
    @IBOutlet weak var returnDateLabel: UILabel!
    @IBOutlet weak var returnDateButton: UIButton!
    @IBOutlet weak var selectDatePicker: UIDatePicker!
    var buttonTag:Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        returnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        selectDatePicker.isHidden = true
    }
    @IBAction func showDatePickerAction(_ sender: UIButton) {
        if selectDatePicker.isHidden == false {
            selectDatePicker.isHidden = true
        } else {
            selectDatePicker.isHidden = false
        }
        buttonTag = sender.tag
    }
    @IBAction func showReturnDateAction(_ sender: UISwitch) {
        returnDateButton.isHidden = !sender.isOn
        returnDateLabel.isHidden = !sender.isOn
    }
    @IBAction func selectedDateAction(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        
        let dateString = formatter.string(from: sender.date)
        if buttonTag == 1 {
            departureDateButton.setTitle(dateString, for: UIControl.State.normal)
        } else {
            returnDateButton.setTitle(dateString, for: UIControl.State.normal)
        }
        
    }
    

}

