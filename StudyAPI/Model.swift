//
//  Model.swift
//  StudyAPI
//
//  Created by 武久　直幹 on 2022/10/10.
//

import Foundation

struct User: Codable, Identifiable {
    
    var id: Int
    var name: String
    var username: String
    var email: String
    
}
