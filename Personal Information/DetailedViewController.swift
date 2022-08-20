//
//  DetailedViewController.swift
//  Personal Information
//
//  Created by Olegio on 20.08.2022.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var personName: UILabel!
    @IBOutlet var email: UILabel!
    @IBOutlet var phone: UILabel!
    
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = person.image
        personName.text = person.name! + " " + person.surname!
        email.text = person.email
        phone.text = person.phone
    }
}
