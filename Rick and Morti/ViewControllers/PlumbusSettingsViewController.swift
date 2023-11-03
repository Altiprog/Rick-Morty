//
//  PlumbusSettingsViewController.swift
//  Rick and Morti
//
//  Created by Александр Тиунович on 31.10.23.
//

import UIKit

class PlumbusSettingsViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var dinSwitch: UISwitch!
    
    @IBOutlet weak var flerSwith: UISwitch!
    
    @IBOutlet weak var ShlamiSwith: UISwitch!
   
    @IBOutlet weak var colorOfPlumbus: UIView!
    
    @IBOutlet weak var BuyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BuyButton.layer.cornerRadius = 15
        
        price.text = "6.50"
        
        
        slider.value = 0.745
        colorOfPlumbus.backgroundColor = UIColor(red: CGFloat(0.945), green: CGFloat(0.776), blue: CGFloat(slider.value), alpha: 1)
    }
    
   
    @IBAction func sliderAction() {
        
        colorOfPlumbus.backgroundColor = UIColor(red: CGFloat(0.945), green: CGFloat(0.776), blue: CGFloat(slider.value), alpha: 1)
        
        
        
        
    }
    
    @IBAction func dingboChanged() {
        if let priceText = price.text, let priceValue = Double(priceText) {
               let updatedPrice: Double
               if dinSwitch.isOn {
                   // Если слайдер включен, добавляем 0.2
                   updatedPrice = priceValue + 0.2
               } else {
                   // Если слайдер выключен, отнимаем 0.2
                   updatedPrice = priceValue - 0.2
               }
               // Обновляем текстовое поле 'price' новым значением, отформатированным до 2-х знаков после запятой
               price.text = String(format: "%.2f", updatedPrice)
        }
    }
    
    
    @IBAction func flerjChanged() {
        if let priceText = price.text, let priceValue = Double(priceText) {
               let updatedPrice: Double
               if flerSwith.isOn {
                   // Если слайдер включен, добавляем 0.2
                   updatedPrice = priceValue + 0.2
               } else {
                   // Если слайдер выключен, отнимаем 0.2
                   updatedPrice = priceValue - 0.2
               }
               // Обновляем текстовое поле 'price' новым значением, отформатированным до 2-х знаков после запятой
               price.text = String(format: "%.2f", updatedPrice)
        }
        
    }
    
    
      
    @IBAction func ShlamiChanged() {
        if let priceText = price.text, let priceValue = Double(priceText) {
               let updatedPrice: Double
               if ShlamiSwith.isOn {
                   // Если слайдер включен, добавляем 0.2
                   updatedPrice = priceValue + 0.2
               } else {
                   // Если слайдер выключен, отнимаем 0.2
                   updatedPrice = priceValue - 0.2
               }
               // Обновляем текстовое поле 'price' новым значением, отформатированным до 2-х знаков после запятой
               price.text = String(format: "%.2f", updatedPrice)
        }
        
    }
    
    
        
    }
    
   

