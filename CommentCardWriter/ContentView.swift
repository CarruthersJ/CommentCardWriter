//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Carruthers, James (EJNR) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showComment: Bool = false
    var body: some View {
        VStack {
            
            if showComment {
                Text("Comment is here")
            } else {
                Text("")
            }
            Button("Show comment") {
                toggleShow()
            }
            .foregroundColor(.green)
        }
    }
    
    func toggleShow() {
        showComment.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
