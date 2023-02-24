//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Carruthers, James (EJNR) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var subjectList: ListOfSubjects
    
    var body: some View {
        VStack {
            NavigationView {
                List(subjectList.allSubjects, id: \.self.subjectName) { subject in
                    NavigationLink(destination: CommentGenerationView(comments: Comments.exampleComments)) {
                        HStack {
                            Text("\(subject.subjectName)")
                            Text("\(subject.displayTeachers())")
                        }
                    }
                }
                Button("Add new subject") {
                    NavigationLink(destination: NewSubjectView())
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
