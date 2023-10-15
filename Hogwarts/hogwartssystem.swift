import SwiftUI
import Foundation

// Define a ENUM with hogwarts houses
enum House {
    case gryffindor, hufflepuff, ravenclaw, slytherin
}

// Define Student STRUCT
struct Student {
    let name: String
    let house: House
    var points: Int
}

// Define CLASS of Students
class HogwartsManager {
    var students: [Student] = []
    
    // Add Student
    func addStudent(name: String, house: House) {
        let newStudent = Student(name: name, house: house, points: 0)
        students.append(newStudent)
    }
    
    // Add Student Points
    func addPoints(toStudent student: Student, points: Int) {
        if let index = students.firstIndex(where: { $0.name == student.name }) {
            students[index].points += points
        }
    }
    
    // Array
    func listStudents(inHouse house: House) -> [Student] {
        return students.filter { $0.house == house }
    }
}

let hogwartsManager = HogwartsManager()
 hogwartsManager.addStudent(name: "Harry Potter", house: .gryffindor)
 hogwartsManager.addStudent(name: "Hermione Granger", house: .gryffindor)
 hogwartsManager.addPoints(toStudent: Student(name: "Harry Potter", house: .gryffindor, points: 0), points: 10)
let gryffindorStudents = hogwartsManager.listStudents(inHouse: .gryffindor)
print("Gryffindor Studendts: \(gryffindorStudents)")


