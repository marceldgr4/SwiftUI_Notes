//
//  Notas.swift
//  Note
//
//  Created by Marcel DiazGranados Robayo on 22/12/24.
//

import Foundation

struct Notas: Identifiable, Hashable{
    let id:UUID
    let title: String
    let text: String?
    let createdAt: Date
    
    var getText: String{
        text ?? ""
    }
    init(id: UUID = UUID(), title: String, text: String?, createdAt: Date) {
        self.id = id
        self.title = title
        self.text = text
        self.createdAt = createdAt
    } 
}
