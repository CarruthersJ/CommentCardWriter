//
//  Subjects.swift
//  CommentCardWriter
//
//  Created by Carruthers, James (EJNR) on 08/02/2023.
//

import Foundation
import CoreText


class Subject {
    let subjectName: String
    let subjectTeachers: [String]
    
    init(subject: String, teachers: [String]) {
        self.subjectName = subject
        self.subjectTeachers = teachers
    }

    func displayTeachers() -> String {
        var teachers = ""
        for teacher in subjectTeachers {
            teachers += teacher
        }
        return teachers
    }
    
}
