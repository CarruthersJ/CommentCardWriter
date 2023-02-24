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
                        TextField("What is your new subject name?", text: $newSubjectName)
                        TextField("Enter your new subject teachers with a comma between each", text: $newSubjectTeachers)
                    }
            Button("Generate new subject") {
                listOfSubjects.addNewSubject(teachers: newSubjectTeachers, subjectName: newSubjectName)
            }
        }
        
    }
}
