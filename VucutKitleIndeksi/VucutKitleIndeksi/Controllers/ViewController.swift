//
//  ViewController.swift
//  VucutKitleIndeksi
//
//  Created by Samet Korkmaz on 17.02.2024.
//

import UIKit

var hesaplayici = HesaplaBMI()

class ViewController: UIViewController {

    
    @IBOutlet weak var boyLabel: UILabel!
    @IBOutlet weak var kgLabel: UILabel!
    
    @IBOutlet weak var boySlider: UISlider!
    @IBOutlet weak var kiloSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func sonucaGit(_ sender: Any) {
        
        let boyMetre = boySlider.value/100
        let kilogram = kiloSlider.value
        
        hesaplayici.hesapla(boy: boyMetre, kilo: kilogram)
        
        performSegue(withIdentifier: "sonucaGit", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sonucaGit" {
            let aktar = segue.destination as! SonucViewController
            
            aktar.sonuc = hesaplayici.getBMIValue()
            aktar.öneri = hesaplayici.getOneri()
            aktar.renk = hesaplayici.getrenk()
            
        }
    }
    
   
    @IBAction func changeSlider(_ sender: UISlider) {
        updateUI(sender: sender)
    }
    
    
    func updateUI(sender: UISlider){
        let secim = sender.accessibilityHint
        
        if(secim == "boy"){
            boyLabel.text = String(Int(sender.value))+"cm"
        }
        else if(secim == "kilo"){
            kgLabel.text = String(Int(sender.value))+"kg"
        }
    }
}

