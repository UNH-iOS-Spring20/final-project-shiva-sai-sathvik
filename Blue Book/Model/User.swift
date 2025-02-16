//
//  User.swift
//  Blue Book
//
//  Created by Shiva Kommareddy on 4/13/20.
//  Copyright © 2020 Shiva Kommareddy. All rights reserved.
//

import Foundation
import FirebaseFirestore
class User: FirebaseCodable{
    var id: String
    @Published var firstname: String
    @Published var lastname: String
    @Published var email: String
    @Published var password: String
    
    var data: [String: Any]{
        return[
            "firstname": firstname,
            "lastname": lastname,
            "email": email,
            "password": password
        ]
    }
    
    required init?(id: String, data: [String : Any]) {
        guard let firstname = data["firstname"] as? String,
        let lastname = data["lastname"] as? String,
        let email = data["email"] as? String,
        let password = data["password"] as? String
            else{
                return nil
         }
        self.id =  id
        self.firstname = firstname
        self.lastname = lastname
        self.email = email
        self.password = password
    }
        
}
