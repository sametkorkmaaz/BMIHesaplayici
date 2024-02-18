//
//  SonucViewController.swift
//  VucutKitleIndeksi
//
//  Created by Samet Korkmaz on 17.02.2024.
//

import UIKit

class SonucViewController: UIViewController {
    var sonuc: String?
    var öneri: String?
    var renk: UIColor?
    
    @IBOutlet weak var sonucLabel: UILabel!
    @IBOutlet weak var oneriLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sonucLabel.text = sonuc
        oneriLabel.text = öneri
        view.backgroundColor = renk
    }
    

    @IBAction func geriDon(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
