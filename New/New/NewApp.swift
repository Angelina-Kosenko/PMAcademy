//
//  NewApp.swift
//  New
//
//  Created by Ангелина Косенко on 14.12.2020.
//

import SwiftUI

@main
struct NewApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: NewDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
