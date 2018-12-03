//
//  LoginController.swift
//  Donation Tracker iOS
//
//  Created by Kunal Patel on 12/2/18.
//  Copyright © 2018 SCRUM Bucket. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

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
    
    
    @IBAction func login(_ sender: Any) {
        guard let e = email.text, let pass = password.text else {return};
        if(UserManager.instance.login(email: e, password: pass)) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let vc = storyboard.instantiateViewController(withIdentifier: "main") as! UITabBarController;
            self.present(vc, animated: true, completion: nil)
        } else {
            // display error
            let alertController = UIAlertController(title: "Invalid Credentials", message:
                "Incorrect Email and/or Password", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
}

