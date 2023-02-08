//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Carruthers, James (EJNR) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Button("Go to comment generator") {
            CommentGenerationView(comments: Comments.exampleComments)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
