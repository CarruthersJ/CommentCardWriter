//
//  NewSubjectView.swift
//  CommentCardWriter
//
//  Created by Carruthers, James (EJNR) on 24/02/2023.
//

import Foundation
import SwiftUI

struct NewSubjectView: View {
    @State private var newSubjectName: String = ""
    @State private var newSubjectTeachers: String = ""
    @EnvironmentObject private var listOfSubjects: ListOfSubjects
    
    var body: some View {
        Form {
            VStack {
                        TextField("Subject name", text: $newSubjectName)
                        TextField("Subject teachers, separated by a comma", text: $newSubjectTeachers)
                    }
            Button("Generate new subject") {
                listOfSubjects.addNewSubject(teachers: newSubjectTeachers, subjectName: newSubjectName)
            }
        }
        
    }
}
