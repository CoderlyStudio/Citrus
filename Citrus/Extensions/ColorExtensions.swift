//
//  ColorExtensions.swift
//  Citrus
//
//  Created by Vito Gallo on 15/04/24.
//

import SwiftUI

/// Extension of the `Color` struct to associate color names with specific colors
extension Color {
    
    // MARK: - PROPERTIES
    
    /// Mapping of color names to corresponding colors
    static let namedColors: [String: Color] = [
        "Bergamot": .colorBergamot,
        "Grapefruit": .colorGrapefruit,
        "Lemon": .colorLemon,
        "Lime": .colorLime,
        "Orange": .colorOrange,
        "Tangerine": .colorTangerine,
    ]
    
    // MARK: - METHODS
    
    /// Returns the color associated with the specified name, if present in the mapping
    /// - Parameter name: The name of the color
    /// - Returns: The color associated with the specified name, or `.clear` if the name is not present in the mapping
    static func named(_ name: String) -> Color {
        return namedColors[name] ?? .clear
    }
}
