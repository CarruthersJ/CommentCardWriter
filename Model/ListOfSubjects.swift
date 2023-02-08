//
//  ListOfSubjects.swift
//  CommentCardWriter
//
//  Created by Carruthers, James (EJNR) on 08/02/2023.
//

import Foundation

class ListOfSubjects {
    var allSubjects: [Subject]
    
    init() {
        self.allSubjects = [Subject(subject: "chem", teachers: ["JAS"])]
    }
    
    func addNewSubject(teachers: [String], subjectName: String) {
        let newSubject = Subject(subject: subjectName, teachers: teachers)
        self.allSubjects.append(newSubject)
    }
}
