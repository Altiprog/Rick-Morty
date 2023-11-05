//
//  PlumbusViewController.swift
//  Rick and Morti
//
//  Created by Александр Тиунович on 31.10.23.
//

import UIKit

class PlumbusViewController: UIViewController {

    @IBOutlet weak var wantBuy: UIButton!
    
    var information: [Information]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wantBuy.layer.cornerRadius = 15
    }
}
