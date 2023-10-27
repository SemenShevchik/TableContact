//
//  FirstDetailsViewController.swift
//  TableContact
//
//  Created by Семен Шевчик on 27.10.2023.
//

import UIKit

class FirstDetailsViewController: UIViewController {

    @IBOutlet weak var numberPerson: UILabel!
    @IBOutlet weak var emailPerson: UILabel!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let person = person {
                    numberPerson.text = person.phone
                    emailPerson.text = person.email
                }
    }

}
