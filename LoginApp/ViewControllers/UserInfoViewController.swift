//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Kristel Maximova on 17.01.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var imagePerson: UIImageView! 
    @IBOutlet var infoLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePerson.image = UIImage(named: user.person.secondImage)
        infoLabel.text = user.person.information
        imagePerson.layer.cornerRadius = imagePerson.frame.width / 2
    }
}
