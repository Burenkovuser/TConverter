//
//  ViewController.swift
//  TConverter
//
//  Created by Vasilii on 06/09/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var faharnheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliederValueChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(slider.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        let temperatureFaharnheit = Int(round(sender.value * 9 / 5) + 32)
        faharnheitLabel.text = "\(temperatureFaharnheit)ºF"
    }
    
}

