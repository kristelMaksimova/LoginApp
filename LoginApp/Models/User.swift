//
//  User.swift
//  LoginApp
//
//  Created by Kristel Maximova on 17.01.2022.
//

import ImageIO

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "Sheldon",
            password: "Bazinga",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let image: String
    let secondImage: String
    let information: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Sheldon",
               surname: "Cooper",
               image: "Sheldon1",
               secondImage: "Sheldon2",
               information: "Sheldon Cooper was born on February 26, 1980 in Galveston.  This character is the main character of the cult TV series The Big Bang Theory.  Sheldon is a distinguished theoretical physicist at Caltech who has 1 master's degree and 2 Ph.D.  The interests of this character are very diverse, they include: video games, science fiction series, comics, trains, etc.")
    }
}
