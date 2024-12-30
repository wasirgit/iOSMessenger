//
//  User.swift
//  iOSMessanger
//
//  Created by Wasir on 30/12/24.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    let fullname: String
    let email: String
    var profileImageUrl: String?
}

extension User {
    static let MOCK_USER = User(fullname: "John Wick", email: "John@gmail.com", profileImageUrl: "facebook-icon")
}
