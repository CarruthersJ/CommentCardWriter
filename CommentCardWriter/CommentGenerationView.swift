//
//  CommentGenerationView.swift
//  CommentCardWriter
//
//  Created by Carruthers, James (EJNR) on 08/02/2023.
//

import SwiftUI

struct CommentGenerationView: View {
    let comments : Comments
    let subject : Subject
    @State private var currentComment: String = "No comment generated."
    @State private var showComment: Bool = false
    var body: some View {
        Form {
            VStack {
                HStack {
                    Text("This is \(subject.subjectName)")
                }
                Section {
                    VStack(alignment: .leading, spacing: 15) {
                        if showComment {
                            Text(currentComment)
                        } else {
                            Text("")
                        }
                        Divider()
                        Button("Show comment") {
                            toggleShow()
                        }
                        Divider()
                        .foregroundColor(.green)
                        Divider()
                        Button("Generate different comment") {
                                currentComment = comments.generateRandomComment(previousComment: currentComment)
                        }
                    }
                }
            }
        }
        
    }
    func toggleShow() {
        showComment.toggle()
    }
}

struct CommentGenerationView_Previews: PreviewProvider {
    static var previews: some View {
        CommentGenerationView(comments: Comments.exampleComments, subject: Subject(subject: "Chemistry", teachers: ["JAS"]))
    }
}
