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
    var selectedDegreeUnit: String = ""
    
    @IBOutlet weak var tempTextField: UITextField!
    @IBOutlet weak var tempPickerView: UIPickerView!
    
    func celcToFahr(c: Double) -> Double{
        return (fahrenheitRatio * c) + 32
    }
    
    /*func fahrToCelc(f: Double) -> Double{
        return (f - 32) * celciusRatio
    }*/
    
    func celcToKel(c: Double) -> Double{
        return c + kelvinConstant
    }
    
    /*func kelToCelc(k: Double) -> Double{
        return kelvinConstant - k
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tempPickerView.delegate = self
        self.tempPickerView.dataSource = self
    }
    
    @IBAction func convertTemp(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        viewController.modalTransitionStyle = .crossDissolve
        viewController.modalPresentationStyle = .fullScreen
        if(selectedDegreeUnit == "Celcius"){
            viewController.currentTemp = tempTextField.text!
        }
        if(selectedDegreeUnit == "Fahrenheit"){
            viewController.currentTemp = tempTextField.text!
            
        }
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
        selectedDegreeUnit = degreeUnits[row]
        return selectedDegreeUnit
    }
    
}
