//
//  LastScreenViewController.swift
//  Rick and Morti
//
//  Created by Александр Тиунович on 3.11.23.
//

import UIKit

class LastScreenViewController: UIViewController {

    
    @IBOutlet weak var congratImage: UIImageView!
    
    
    @IBOutlet weak var plumbusImage: UIImageView!
    
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button.layer.cornerRadius = 15
        
        plumbusImage.image = UIImage(named: "plumbuss")
        
        congratImage.image = UIImage(named: "cong")
        
        
        
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
