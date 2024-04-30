//
//  NoteDetailView.swift
//  FIrebaseBasic
//
//  Created by 황규상 on 4/30/24.
//

import SwiftUI

struct NoteDetailView: View {
    var note: Note

    var body: some View {
        VStack(spacing: 12) {
            Text(note.title)
                .font(.headline)
                .fontWeight(.bold)
            TextEditor(text: .constant(note.body))
                .border(.brown)
        }
        .padding(24)
    }
}

#Preview {
    NoteDetailView(note: Note.sampleWithLongBody)
}
