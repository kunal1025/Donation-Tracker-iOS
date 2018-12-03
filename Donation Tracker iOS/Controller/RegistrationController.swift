//
//  RegistrationController.swift
//  Donation Tracker iOS
//
//  Created by Kunal Patel on 12/2/18.
//  Copyright © 2018 SCRUM Bucket. All rights reserved.
//

import UIKit

class RegistrationController: UIViewController {
    
    
   
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//    @IBAction func register(_ sender: Any) {
//        //let _firstName = firstName.text;
//        //let _lastName = lastName.text;
//        let _email = email.text;
//        let _password = password.text;
//        //let user = User.init(firstName: _firstName ?? "", lastName: _lastName ?? "", role: Role.User, location: "", email: _email ?? "", password: _password ?? "");
//        let user = User.init(firstName: "Kunal", lastName: "Patel", role: Role.User, location: "", email: _email ?? "", password: _password ?? "")
//        if (UserManager.instance.addUser(email: _email ?? "", user: user)) {
//            let storyboard = UIStoryboard(name: "Welcome", bundle: nil);
//            let vc = storyboard.instantiateViewController(withIdentifier: "login") as! UITabBarController;
//            self.present(vc, animated: true, completion: nil)
//        } else {
//            let alertController = UIAlertController(title: "Invalid Email", message:
//                "User exists with given email", preferredStyle: UIAlertController.Style.alert)
//            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))
//            self.present(alertController, animated: true, completion: nil)
//        }
//    }
    @IBAction func register(_ sender: Any) {
        //let _firstName = firstName.text;
        //let _lastName = lastName.text;
        let _email = email.text;
        let _password = password.text;
        //let user = User.init(firstName: _firstName ?? "", lastName: _lastName ?? "", role: Role.User, location: "", email: _email ?? "", password: _password ?? "");
        let user = User.init(firstName: "Kunal", lastName: "Patel", role: Role.User, location: "", email: _email ?? "", password: _password ?? "")
        if (UserManager.instance.addUser(email: _email ?? "", user: user)) {
            let storyboard = UIStoryboard(name: "Welcome", bundle: nil);
            let vc = storyboard.instantiateViewController(withIdentifier: "login") as! LoginController;
            self.present(vc, animated: true, completion: nil)
        } else {
            let alertController = UIAlertController(title: "Invalid Email", message:
                "User exists with given email", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
    }
}
