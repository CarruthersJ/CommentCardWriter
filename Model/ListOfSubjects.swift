//
//  ListOfSubjects.swift
//  CommentCardWriter
//
//  Created by Carruthers, James (EJNR) on 08/02/2023.
//

import Foundation

class ListOfSubjects: ObservableObject {
   @Published var allSubjects: [Subject]
    
    init() {
        self.allSubjects = [Subject(subject: "Chemistry", teachers: ["JAS"])]
    }
    
    func addNewSubject(teachers: String, subjectName: String) {
        let splitTeachers = teachers.split(separator: Character(", "))
        var teacherList: [String] = []
        for teacher in splitTeachers {
            teacherList.append(String(teacher))
        }
        let newSubject = Subject(subject: subjectName, teachers: teacherList)
        self.allSubjects.append(newSubject)
    }
}
