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
        var subjectInList: Subject = Subject(subject: "", teachers: [])
        var alreadyExists = false
        var splitTeachers : Array<Any>
        if teachers.contains(",") {
            splitTeachers = teachers.split(separator: ",")
        } else {
            splitTeachers = [teachers]
        }
        var teacherList: [String] = []
        for teacher in splitTeachers {
            teacherList.append("\(teacher)")
        }
        let newSubject = Subject(subject: subjectName, teachers: teacherList)
        for subject in self.allSubjects {
            if subject.subjectName == newSubject.subjectName {
                alreadyExists = true
                subjectInList = subject
            }
        }
        if alreadyExists == false {
            self.allSubjects.append(newSubject)
        } else {
            self.removeSubject(subjectToRemove: subjectInList)
            self.allSubjects.append(newSubject)
        }
        
    }
    
    func removeSubject(subjectToRemove: Subject) {
        for i in 0 ..< self.allSubjects.count {
            if self.allSubjects[i].subjectName == subjectToRemove.subjectName {
                self.allSubjects.remove(at: i)
            }
        }
    }
}
