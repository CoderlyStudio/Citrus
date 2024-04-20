//
//  CitrusApp.swift
//  Citrus
//
//  Created by Vito Gallo on 15/04/24.
//

import SwiftUI

/// Entry point of the Citrus App
@main
struct CitrusApp: App {
    
    // MARK: - PROPERTIES
    
    /// The view model for managing app state
    @StateObject var viewModel: CitrusViewModel = CitrusViewModel()
    
    // MARK: - BODY
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
