//
//  ViewController.swift
//  Rick and Morti
//
//  Created by Александр Тиунович on 31.10.23.
//
import AVFoundation
import UIKit

final class StartViewController: UIViewController {

    @IBOutlet weak var textInTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var RickMorti: UIImageView!
    
    var information = Information.information()
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        loginButton.layer.cornerRadius = 15
        background.image = UIImage(named: "portal")
        RickMorti.image = UIImage(named: "RM")
        
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            
            if let navigationVC = viewController as? UINavigationController {
                if let personsTable = navigationVC.topViewController as? PersonsTableViewController {
                    personsTable.information = information
                } else if let plumbusVC = navigationVC.topViewController as? PlumbusViewController {
                    
                    plumbusVC.information = information
                
                }
            }
            
        }
        
    }
    
    
    @IBAction func buttonPressed() {
       playSound()
    }
   
    func playSound() {
        
        let url = Bundle.main.url(forResource: "portal-gun", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
        
        
    }
    
    

    @IBAction func unwind(segue: UIStoryboardSegue) {
      
    }
    
}

