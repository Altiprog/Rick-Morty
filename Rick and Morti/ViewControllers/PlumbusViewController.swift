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
        
        // Do any additional setup after loading the view.
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