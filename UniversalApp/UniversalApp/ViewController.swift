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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let language = languageLabel.text,
            let region = "region".localized {
            languageLabel.text = "\(language)\t\(region)"
        }
        if let imageName = "imageName".localized {
            actorImageView.image = UIImage(named: imageName)
        }
        nameLabel.text = "name".localized
        infoLabel.text = "info".localized
    }
}

extension String {
    var localized: String? {
        guard let table = Locale.current.regionCode else { return nil }
        return Bundle.main.localizedString(forKey: self, value: nil, table: table)
    }
}
