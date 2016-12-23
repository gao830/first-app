//
//  ViewController.swift
//  firstApp
//
//  Created by Yunpeng Gao on 12/21/16.
//  Copyright © 2016 Yunpeng Gao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    let state = ["Missouri", "Alaska", "California", "Utah", "Maine", "Washington", "Oregon"]
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after
        print("hi world ggg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return state.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return state[row]
    }
    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(state[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
    @IBAction func buyBtnPressed(_ sender: Any) {
        for view in self.view.subviews as [UIView]{
            view.isHidden = true
        }
    }
    
}


