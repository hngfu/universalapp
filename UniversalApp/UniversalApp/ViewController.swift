//
//  ViewController.swift
//  UniversalApp
//
//  Created by 조재흥 on 19. 7. 1..
//  Copyright © 2019 hngfu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var actorImageView: UIImageView!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var birthdayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        actorImageView.image = UIImage(named: "Name".localized)
        languageLabel.text = "Language".localized
        nameLabel.text = "Name".localized
        infoLabel.text = "Info".localized
        birthdayButton.setTitle("Birthday".localized, for: .normal)
    }
}

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
