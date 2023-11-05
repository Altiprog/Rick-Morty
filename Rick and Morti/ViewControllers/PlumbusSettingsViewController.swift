//
//  PlumbusSettingsViewController.swift
//  Rick and Morti
//
//  Created by Александр Тиунович on 31.10.23.
//

import UIKit

class PlumbusSettingsViewController: UIViewController {
    
    @IBOutlet weak var dinSwitch: UISwitch!
    @IBOutlet weak var flerSwith: UISwitch!
    @IBOutlet weak var ShlamiSwith: UISwitch!
    
    @IBOutlet weak var myStepper: UIStepper!
    
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var colorOfPlumbus: UIView!
    
    @IBOutlet weak var BuyButton: UIButton!
    
    var basePrice: Double = 6.50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BuyButton.layer.cornerRadius = 15
        updateBasePrice()
        slider.value = 0.745
        colorOfPlumbus.backgroundColor = UIColor(red: CGFloat(0.945), green: CGFloat(0.776), blue: CGFloat(slider.value), alpha: 1)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func updateBasePrice() {
        var newBasePrice = 6.50 // Стартовая цена
        if dinSwitch.isOn { newBasePrice += 0.2 }
        if flerSwith.isOn { newBasePrice += 0.2 }
        if ShlamiSwith.isOn { newBasePrice += 0.2 }
        
        basePrice = newBasePrice // Обновляем базовую цену
        updateTotalPrice() // Обновляем итоговую цену
    }
    
    func updateTotalPrice() {
        let stepperValue = Int(myStepper.value)
        status.text = "\(stepperValue)"
        let updatedPrice = basePrice * Double(stepperValue)
        price.text = String(format: "%.2f", updatedPrice)
    }
    
    @IBAction func myStepperValueChanged() {
        updateTotalPrice()
    }
    
    @IBAction func sliderAction() {
        colorOfPlumbus.backgroundColor = UIColor(red: CGFloat(0.945), green: CGFloat(0.776), blue: CGFloat(slider.value), alpha: 1)
    }
    
    @IBAction func dingboChanged() {
        updateBasePrice()
    }
    
    @IBAction func flerjChanged() {
        updateBasePrice()
    }
    
    @IBAction func ShlamiChanged() {
        updateBasePrice()
    }
}
