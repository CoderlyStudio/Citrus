//
//  AppIcon.swift
//  Citrus
//
//  Created by Vito Gallo on 15/04/24.
//

import Foundation

/// Enumeration representing the possible icons of the application
enum AppIcon: String, CaseIterable, Identifiable{
    
    // MARK: - PROPERTIES
    
    var id: String {rawValue}
    
    // MARK: - CASES
    
    case Bergamot, Grapefruit, Lemon, Lime, Orange, Tangerine
}
