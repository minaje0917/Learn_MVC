//
//  NetworkService.swift
//  DesignPattern
//
//  Created by 선민재 on 2022/04/25.
//

import Foundation


class NetworkService {
    static let shared = NetworkService()
    private init() { }
    
    private var user: User?
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void) {
        
        DispatchQueue.global().async {
            sleep(2)
            DispatchQueue.main.async {
                if email == "test@test.com" && password == "password" {
                    self.user = User(firstName: "Seon", lastName: "Minjae", email: "test@test.com", age: 18, location: Location(lat: 213, lng: -213))
                 completion(true)
                } else {
                    self.user = nil
                    completion(false)
                }
            }
        }
        
    }
    
    
    func getLoggedInUser() -> User? {
        return user
    }
}
