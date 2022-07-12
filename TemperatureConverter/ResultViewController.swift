//
//  ResultViewController.swift
//  TemperatureConverter
//
//  Created by Kelny Tan on 22/03/22.
//

import UIKit

class ResultViewController: UIViewController {
    var currentTemp: String = ""
    var convertedTemp: String = ""
    
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var convertedTempLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentTempLabel.text = currentTemp
        convertedTempLabel.text = convertedTemp
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
