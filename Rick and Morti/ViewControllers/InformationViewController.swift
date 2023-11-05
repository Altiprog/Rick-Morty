//
//  InformationViewController.swift
//  Rick and Morti
//
//  Created by Александр Тиунович on 31.10.23.
//

import UIKit

class InformationViewController: UIViewController {
    
    @IBOutlet weak var rick: UIImageView!
    @IBOutlet weak var morty: UIImageView!
    @IBOutlet weak var jerry: UIImageView!
    @IBOutlet weak var beth: UIImageView!
    @IBOutlet weak var summer: UIImageView!
    @IBOutlet weak var mg: UIImageView!
    @IBOutlet weak var missiks: UIImageView!
    @IBOutlet weak var zeeo: UIImageView!
    @IBOutlet weak var scarry: UIImageView!
    @IBOutlet weak var squanchy: UIImageView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        rick.image = UIImage(named: "Rick")
        morty.image = UIImage(named: "Morty")
        jerry.image = UIImage(named: "Jerry")
        beth.image = UIImage(named: "Beth")
        summer.image = UIImage(named: "Summer")
        mg.image = UIImage(named: "MG")
        missiks.image = UIImage(named: "Meeseeks")
        zeeo.image = UIImage(named: "Zeep")
        scarry.image = UIImage(named: "SCARY-TERRY")
        squanchy.image = UIImage(named: "Squanchy")
    }
}
