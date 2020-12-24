//
//  ContentView.swift
//  PMAcademy
//
//  Created by Ангелина Косенко on 10.12.2020.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: PMAcademyDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(PMAcademyDocument()))
    }
}
