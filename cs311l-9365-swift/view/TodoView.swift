//
//  TodoView.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/1/24.
//

import SwiftUI

struct TodoView: View {
    @State var items: [TodoItem]
    
    var body: some View {
        VStack {
            Text("Todo List")
                .padding()
        }
        
        List {
            ForEach(items) {item in
                Text("Todo")
                // ListRowView(title: item)
            }
        }
    }
}

#Preview {
    TodoView(items)
}
