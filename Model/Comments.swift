//
//  Comments.swift
//  CommentCardWriter
//
//  Created by Carruthers, James (EJNR) on 04/02/2023.
//

import Foundation

class Comments {
    var comments: [String]
    
    init(comments: [String]) {
        self.comments = comments
    }
    
    func generateRandomComment() -> String {
        let numberOfComments = self.comments.count
        let randomNumber = Int.random(in: 0 ..< numberOfComments)
        let randomComment = self.comments[randomNumber]
        return randomComment
    }
    
    #if DEBUG
    static let exampleComments = Comments(comments: ["Comment 1", "Comment 2", "Comment 3"])
    #endif
}
