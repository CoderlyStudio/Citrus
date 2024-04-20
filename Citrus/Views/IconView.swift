//
//  IconView.swift
//  Citrus
//
//  Created by Vito Gallo on 15/04/24.
//

import SwiftUI

/// A view representing an individual citrus icon in the grid
struct IconView: View {
    
    // MARK: - PROPERTIES
    
    /// The citrus icon to display
    let icon: AppIcon
    /// A Boolean value indicating whether the icon is currently selected
    let isSelected: Bool
    /// A closure to invoke when the icon is tapped
    let action: () -> Void
    
    // MARK: - BODY
    
    var body: some View {
        
        Button(action: {
            action()
        }) {
            
            VStack(spacing: 15){
                
                // IMAGE
                IconImageView(icon: icon)
                    .opacity(isSelected ? 0.5 : 1)
                
                // NAME
                Text(icon.rawValue)
                    .font(.custom("Lemon-Regular", size: 14))
                    .foregroundStyle(isSelected ? .white : Color.named(icon.rawValue))
                    .opacity(isSelected ? 0.5 : 1)
                
            }
            
        }
        .frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/2)
        .background(isSelected ? .white.opacity(0.5) : .white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .contentShape(RoundedRectangle(cornerRadius: 12))
        .sensoryFeedback(.success, trigger: isSelected)
        .disabled(isSelected)
        
    }
}

// MARK: - PREVIEW

#Preview {
    HStack{
        // SELECTED
        IconView(icon: AppIcon(rawValue: "Bergamot")!, isSelected: true, action: {})
        
        // NOT SELECTED
        IconView(icon: AppIcon(rawValue: "Grapefruit")!, isSelected: false, action: {})
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.colorBergamot)
}
