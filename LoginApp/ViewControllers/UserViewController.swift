//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Kristel Maximova on 17.01.2022.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet var imagePerson: UIImageView!
    @IBOutlet var fullNamePerson: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        fullNamePerson.text = user.person.fullName
        imagePerson.image = UIImage(named: user.person.image)
        imagePerson.layer.cornerRadius = imagePerson.frame.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? UserInfoViewController else { return }
        imageVC.user = user
    }
}
