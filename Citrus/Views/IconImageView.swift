//
//  IconImageView.swift
//  Citrus
//
//  Created by Vito Gallo on 15/04/24.
//

import SwiftUI

/// A view responsible for displaying the image of a citrus icon
struct IconImageView: View {
    
    // MARK: - PROPERTIES

    /// The citrus icon to display
    let icon: AppIcon

    // MARK: - BODY

    var body: some View {
        Image(uiImage: UIImage(named: icon.rawValue) ?? UIImage())
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - PREVIEW

#Preview {
    IconImageView(icon: AppIcon(rawValue: "Bergamot")!)
}
