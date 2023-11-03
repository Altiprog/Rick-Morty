//
//  PersonInfoViewController.swift
//  Rick and Morti
//
//  Created by Александр Тиунович on 2.11.23.
//
import AVFoundation
import UIKit

class PersonInfoViewController: UIViewController {
    
    @IBOutlet weak var imagePerson: UIImageView!
    
    @IBOutlet weak var informaitionAbout: UITextView!
    

    @IBOutlet weak var button: UIButton!
    
    var about: About!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePerson.image = UIImage(named: about.picture)
        informaitionAbout.text = about.infoAbout
        
      
    }
    
    @IBAction func voisePlay() {
        playSound(name: about.picture)
        
        }
        
        
   
    
  
    func playSound(name: String) {
        
        let url = Bundle.main.url(forResource: name , withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
        
        
    }
    
    
    

}
