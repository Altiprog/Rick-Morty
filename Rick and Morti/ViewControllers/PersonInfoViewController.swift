//
//  PersonInfoViewController.swift
//  Rick and Morti
//
//  Created by Александр Тиунович on 2.11.23.
//
import AVFoundation
import UIKit

class PersonInfoViewController: UIViewController, AVAudioPlayerDelegate {
    
    @IBOutlet weak var imagePerson: UIImageView!
    
    @IBOutlet weak var informaitionAbout: UITextView!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var slider: UISlider!
    
    var about: About!
    var person: Person!
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePerson.image = UIImage(named: about.picture)
        informaitionAbout.text = about.infoAbout
        title = person.name
      }

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if flag {
            button.setImage(UIImage(named: "play.circle"), for: .normal)
        }
    }
    
    @IBAction func trackSlider() {
        slider.value = Float(player?.currentTime ?? 0)
    }

    @IBAction func voisePlay() {
        if player != nil && player!.isPlaying == true {
                   player.stop()
            
                   button.setImage(UIImage(systemName: "play.circle"), for: .normal)
               } else {
                   playSound(name: about.picture)
                   button.setImage(UIImage(systemName: "pause.circle"), for: .normal)
                   slider.maximumValue = Float(player.duration)
               }
           }
    
    func playSound(name: String) {
        let url = Bundle.main.url(forResource: name , withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(trackSlider), userInfo: nil, repeats: true)
    }
}
