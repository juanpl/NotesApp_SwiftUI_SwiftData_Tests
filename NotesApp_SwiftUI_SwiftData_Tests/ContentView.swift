//
//  ContentView.swift
//  NotesApp_SwiftUI_SwiftData_Tests
//
//  Created by Juan Pablo Lasprilla Correa on 29/12/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var viewModel: ViewModel = .init()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.notes){ note in
                    NavigationLink(value: note){
                        VStack(alignment: .leading){
                            Text(note.title)
                                .foregroundStyle(.primary)
                            Text(note.getText)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView(viewModel: .init(notes: [
        .init(title: "SwiftBeta", text: "text 1", createdAt: .now),
        .init(title: "SwiftBeta 2", text: "text 2", createdAt: .now),
    ]))
        
}
