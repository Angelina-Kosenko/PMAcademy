//
//  PMAcademyApp.swift
//  PMAcademy
//
//  Created by Ангелина Косенко on 10.12.2020.
//

import SwiftUI

@main
struct PMAcademyApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: PMAcademyDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
