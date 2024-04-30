//
//  NotesListView.swift
//  FIrebaseBasic
//
//  Created by 황규상 on 4/30/24.
//

import SwiftUI

struct NotesListView: View {
    @State private var service: NotesService = NotesService()
    @State private var isNewNotePresented = false
    
    var body: some View {
        NavigationStack {
            List(service.notes) { note in
                NavigationLink(value: note) {
                    NoteSummaryView(note: note)
                }
            }
            .navigationDestination(for: Note.self) { note in
                NoteDetailView(note: note)
            }
            .navigationTitle("FireNotes")
            .navigationBarTitleDisplayMode(.inline)
            .task {
                service.fetch()
            }
        }
    }
}

#Preview {
    NotesListView()
}
