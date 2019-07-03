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
        
        let locale = Locale.current
        if let languageCode = locale.languageCode,
            let language = locale.localizedString(forLanguageCode: languageCode),
            let regionCode = locale.regionCode,
            let region = locale.localizedString(forRegionCode: regionCode) {
            languageLabel.text = "\(language)\t\(region)"
        }
        if let imageName = Keys.imageName.commonLocalized {
            actorImageView.image = UIImage(named: imageName)
        }
        nameLabel.text = Keys.name.localized
        infoLabel.text = Keys.info.localized
    }
    
    @IBAction func touchUpInsideBirthdayButton(_ sender: Any) {
        guard let birthday = Keys.birthday.commonLocalized else { return }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let date = dateFormatter.date(from: birthday),
            let language = Keys.language.commonLocalized else { return }
        dateFormatter.dateStyle = .full
        dateFormatter.locale = Locale(identifier: language)
        let formattedBirthday = dateFormatter.string(from: date)
        let alertController = UIAlertController(title: formattedBirthday,
                                                message: nil,
                                                preferredStyle: .alert)
        let closeAction = UIAlertAction(title: "Close",
                                        style: .cancel,
                                        handler: nil)
        alertController.addAction(closeAction)
        self.present(alertController, animated: true, completion: nil)
    }
}

extension String {
    var localized: String? {
        guard let table = Locale.current.regionCode else { return nil }
        return Bundle.main.localizedString(forKey: self, value: nil, table: table)
    }
    
    var commonLocalized: String? {
        guard let table = Locale.current.regionCode else { return nil }
        return Bundle.main.localizedString(forKey: self, value: nil, table: "Common\(table)")
    }
}
