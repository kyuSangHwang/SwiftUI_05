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
        Text("Hello, World!")
    }
}

#Preview {
    NoteDetailView(note: Note.sampleWithLongBody)
}
