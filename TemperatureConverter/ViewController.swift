//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Kelny Tan on 22/03/22.
//

import UIKit

class ViewController: UIViewController {
    let celciusRatio: Double = 5/9 // F to C ratio
    let fahrenheitRatio: Double = 9/5 // C to F ratio
    let kelvinConstant: Double = 273 // Rounded to 273, actual is 273.15; equals to 0 degree celcius
    var convertedVal: Double = 0
    let degreeUnits: [String] = ["Celcius", "Fahrenheit", "Kelvin"]
    
    @IBOutlet weak var tempTextField: UITextField!
    
    func celcToFahr(c: Double) -> Double{
        return (fahrenheitRatio * c) + 32
    }
    
    func fahrToCelc(f: Double) -> Double{
        return (f - 32) * celciusRatio
    }
    
    func celcToKel(c: Double) -> Double{
        return c + kelvinConstant
    }
    
    func kelToCelc(k: Double) -> Double{
        return kelvinConstant - k
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func convertTemp(_ sender: Any) {
        
    }
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return degreeUnits.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return degreeUnits[row]
    }
    
}
