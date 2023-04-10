//
//  ContentView.swift
//  SearchList
//
//  Created by Russell Gordon on 2023-04-10.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]

    // MARK: Computed properties
    var body: some View {
        
        List(items, id: \.self) { currentItem in
            Text(currentItem)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
