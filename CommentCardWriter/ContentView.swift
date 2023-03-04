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
                VStack {
                    List(subjectList.allSubjects, id: \.self.subjectName) { subject in
                        NavigationLink(destination: CommentGenerationView(subjectList: subjectList, comments: Comments.exampleComments, subject: subject)) {
                            HStack {
                                Text("\(subject.subjectName):")
                                Text("\(subject.displayTeachers())")
                            }
                        }
                    }
                    NavigationLink(destination: NewSubjectView()) {
                            Text("Add new subject")
                                .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ListOfSubjects())
    }
}
