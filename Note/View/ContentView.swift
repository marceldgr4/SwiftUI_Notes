//
//  ContentView.swift
//  Note
//
//  Created by Marcel DiazGranados Robayo on 22/12/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var viewModel: ViewModel = .init()
    @State var showCreateNote: Bool = false
    
   
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.notas){ notas in
                    NavigationLink(value:notas){
                        VStack(alignment: .leading){
                            Text(notas.title)
                                .foregroundStyle(.primary)
                            Text(notas.getText)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .status){
                    Button(action: {
                        showCreateNote.toggle()
                    }, label: {
                        Label("Create Note", systemImage:"square.and.pencil")
                            .labelStyle(TitleAndIconLabelStyle())
                    })
                    .buttonStyle(.bordered)
                    .tint(.blue)
                    .bold()
                }
                
            }
            .navigationTitle("Notas")
            .navigationDestination(for: Notas.self, destination: { nota in
                UpdateNoteView(viewModel: viewModel, id: nota.id, title: nota.title, text: nota.getText)})
            .fullScreenCover(isPresented: $showCreateNote, content:{
                CreateNotaView(viewModel: viewModel)
            } )
        }
    }
          
}

#Preview {
    
        ContentView(viewModel: .init(notas: [
            .init(title: "Nota de prueba", text: "texto de prueba", createdAt: .now)
        ]))
    
}
