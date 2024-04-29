//
//  NoteService.swift
//  FIrebaseBasic
//
//  Created by 황규상 on 4/29/24.
//

import Firebase
import FirebaseFirestore

class NoteService: ObservableObject {
    @Published var notes: [Note]
    
    init(notes: [Note]) {
        self.notes = notes
    }
    
    func fetch() {}
    
    func addNote(title: String, date: Date, body: String) {}
    
    private func startRealtimedates() {}
    
    private func updatesNote(snapshot: QuerySnapshot) {}
}
