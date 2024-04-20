//
//  CitrusViewModel.swift
//  Citrus
//
//  Created by Vito Gallo on 15/04/24.
//

import SwiftUI

/// A view model for managing the state of the Citrus App
class CitrusViewModel: ObservableObject {
    
    // MARK: - PROPERTIES

    /// The name of the currently selected citrus icon
    @AppStorage("icon") var selectedIcon: String = "Bergamot"
    
    // MARK: - METHODS

    /// Changes the app icon to the specified citrus icon
    /// - Parameter icon: The name of the citrus icon to set as the app icon
    func changeAppIcon(_ icon: String){
        withAnimation{
            UIApplication.shared.setAlternateIconName(icon)
            selectedIcon = icon
        }
    }
    
}
