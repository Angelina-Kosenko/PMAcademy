//
//  ContentView.swift
//  New
//
//  Created by Ангелина Косенко on 14.12.2020.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: NewDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(NewDocument()))
    }
}
