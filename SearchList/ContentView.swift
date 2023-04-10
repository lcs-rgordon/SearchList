//
//  ContentView.swift
//  SearchList
//
//  Created by Russell Gordon on 2023-04-10.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    // The list of items to show
    @State var items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    // The search term the user has provided
    @State var searchText = ""

    // MARK: Computed properties
    
    // The possibly-filtered array of items
    var filteredItems: [String] {
        
        if searchText.isEmpty {
            
            return items
            
        } else {
            
            // Create an empty array
            var matchingItems: [String] = []
            
            // Iterate over original array
            for item in items {
                if item.contains(searchText) {
                    matchingItems.append(item)
                }
            }
            
            // Return the array of items that match the search text
            return matchingItems
            
        }
        
    }
    
    // The user interface
    var body: some View {
        
        NavigationView {

            VStack {
                
                Text("Searching on: \(searchText)")

                List(filteredItems, id: \.self) { currentItem in
                    Text(currentItem)
                }
                .searchable(text: $searchText)

            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
