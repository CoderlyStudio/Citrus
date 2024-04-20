//
//  ContentView.swift
//  Citrus
//
//  Created by Vito Gallo on 15/04/24.
//

import SwiftUI

/// The main view responsible for displaying the grid of citrus icons
struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    /// The view model for managing app state
    @ObservedObject var viewModel: CitrusViewModel
    
    // MARK: - BODY
    
    var body: some View {
        
        // TITLE
        VStack(spacing: 30) {
            
            Text("Choose your Citrus")
                .font(.custom("Lemon-Regular", size: 28))
                .foregroundStyle(.white)
            
            // GRID
            LazyVGrid(columns: [GridItem(.adaptive(minimum: UIScreen.main.bounds.width/2.5, maximum: UIScreen.main.bounds.width/2.5), spacing: 10, alignment: .leading)], spacing: 10){
                
                ForEach(AppIcon.allCases){ icon in
                    
                    // ELEMENT
                    IconView(icon: icon, isSelected: viewModel.selectedIcon == icon.rawValue){
                        viewModel.changeAppIcon(icon.rawValue)
                    }
                    
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.named(viewModel.selectedIcon))
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView(viewModel: CitrusViewModel())
}
