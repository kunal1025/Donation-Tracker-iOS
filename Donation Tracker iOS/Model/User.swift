//
//  User.swift
//  Donation Tracker iOS
//
//  Created by Kunal Patel on 12/2/18.
//  Copyright © 2018 SCRUM Bucket. All rights reserved.
//

import Foundation

class User {
    var firstName: String
    var lastName: String
    var role: Role
    var location: String
    var email: String
    var password: String
    
    init(firstName: String, lastName: String, role: Role, location: String, email: String, password: String) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.role = role;
        self.location = location;
        self.email = email;
        self.password = password;
    }
    
    func checkPassword(password: String) ->Bool {
        return self.password == password;
    }
}
