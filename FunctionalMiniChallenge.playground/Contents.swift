//: Playground - noun: a place where people can play

import UIKit

enum StudentYear: Int {
    case freshman, sophomore, junior, senior
}

struct Student {
    let firstName: String
    let lastName: String
    let id: Int
    let year: StudentYear
    let grade: Int
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.id  = Int(arc4random_uniform(1000))
        self.year = StudentYear(rawValue: Int(arc4random_uniform(4))) ?? .freshman
        self.grade = Int(arc4random_uniform(101))
    }
}

var students: [Student] = [
    Student(firstName: "Sterling", lastName: "Archer"),
    Student(firstName: "Lana", lastName: "Kane"),
    Student(firstName: "Cheryl", lastName: "Tunt"),
    Student(firstName: "Pam", lastName: "Poovey"),
    Student(firstName: "Cyril", lastName: "Figgis"),
    Student(firstName: "Ray", lastName: "Gillette"),
    Student(firstName: "Malory", lastName: "Archer"),
    Student(firstName: "Barry", lastName: "Dillon"),
    Student(firstName: "Ron", lastName: "Cadillac"),
    Student(firstName: "Ross", lastName: "Geller"),
    Student(firstName: "Chandler", lastName: "Bing"),
    Student(firstName: "Rachel", lastName: "Green"),
    Student(firstName: "Joey", lastName: "Tribbiani"),
    Student(firstName: "Monica", lastName: "Geller"),
    Student(firstName: "Phoebe", lastName: "Buffay")
]


let freshman = Student.filter{ $0.year("freshman")}


let fullNames = students.flatMap($0.firstName + $0.lastName)


let grade =  students.reduce(0, {($0 + $1 / .count)})