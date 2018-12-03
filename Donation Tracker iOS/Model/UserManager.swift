//
//  userManager.swift
//  Donation Tracker iOS
//
//  Created by Kunal Patel on 12/2/18.
//  Copyright © 2018 SCRUM Bucket. All rights reserved.
//

import Foundation

class UserManager {
    static let instance = UserManager();
    
    var currentUser: User?
    var users = [String: User]();
    
    private init() {}
    
    func getCurrentUser() -> User {
        return self.currentUser!;
    }
    
    func setCurrentUser(user: User) {
        self.currentUser = user;
    }
    
    func clearCurrentUser() {
        self.currentUser = nil;
    }
    
    func addUser(email: String, user: User) -> Bool {
        let u = users[email];
        if (u == nil) {
            return false;
        }
        users[email] = user;
        return true;
    }
    
    func login(email: String, password: String) -> Bool {
        let user = users[email];
        if (user == nil) {
            return false;
        }
        return user!.checkPassword(password: password);
    }
}
