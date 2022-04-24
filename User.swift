//
//  User.swift
//  DesignPattern
//
//  Created by 선민재 on 2022/04/23.
//

import Foundation


struct User {
    let firstName, lastName, email : String
    let age: Int
    let location: Location
    
}

struct Location {
    let lat: Double
    let lng: Double
}
