//
//  CommentGenerationView.swift
//  CommentCardWriter
//
//  Created by Carruthers, James (EJNR) on 08/02/2023.
//

import SwiftUI

struct CommentGenerationView: View {
    let comments : Comments
    @State private var currentComment: String = "No comment generated."
    @State private var showComment: Bool = false
    var body: some View {
        VStack {
            
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
        }
    }
    
    func toggleShow() {
        showComment.toggle()
    }
}

struct CommentGenerationView_Previews: PreviewProvider {
    static var previews: some View {
        CommentGenerationView(comments: Comments.exampleComments)
    }
}
