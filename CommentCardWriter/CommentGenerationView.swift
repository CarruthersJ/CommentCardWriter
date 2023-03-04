//
//  CommentGenerationView.swift
//  CommentCardWriter
//
//  Created by Carruthers, James (EJNR) on 08/02/2023.
//

import SwiftUI

struct CommentGenerationView: View {
    var subjectList : ListOfSubjects
    let comments : Comments
    let subject : Subject
    @State private var currentComment: String = "No comment generated."
    @State private var showComment: Bool = false
    @State private var levelOfAchievement: Double = 5
    
    var body: some View {
        Form {
            Section {
                VStack {
                    HStack {
                        Text("This is \(subject.subjectName), ")
                        Text("Teachers: \(subject.displayTeachers())")
                    }
                }
            }
            if showComment {
                Text(currentComment)
            } else {
                Text("")
            }
            Button("Show comment") {
                toggleShow()
            }
            .foregroundColor(.green)
            Button("Generate different comment") {
                currentComment = comments.generateRandomComment(previousComment: currentComment)
            }
            Section(footer: "What is your level of achievement") {
                Slider(value: $levelOfAchievement, in: 0...10) {
                    Text("What is your level of achievement")
                }
            }
        Spacer()
        Button("Delete subject") {
            subjectList.removeSubject(subjectToRemove: subject)
        } .foregroundColor(.red)
    }
    }
        
    func toggleShow() {
        showComment.toggle()
    }
}

struct CommentGenerationView_Previews: PreviewProvider {
    static var previews: some View {
        CommentGenerationView(subjectList: ListOfSubjects(), comments: Comments.exampleComments, subject: Subject(subject: "Chemistry", teachers: ["JAS"]))
    }
}
