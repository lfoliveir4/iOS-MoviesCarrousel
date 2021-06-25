//
//  ImageCaroussel.swift
//  moviescarousel
//
//  Created by Luis Filipe Alves de Oliveira on 24/06/21.
//

import SwiftUI

struct ImageCaroussel: View {
    let scale: CGFloat

    var body: some View {
            Image("Image")
                .resizable()
                .scaledToFill()
                .frame(width: 150)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.5))
                .clipped()
                .cornerRadius(5)
                .shadow(radius: 5)
                .scaleEffect(CGSize(width: scale, height: scale))
                .animation(.easeOut(duration: 0.5))
            
            Text("Cruella")
                .padding(.top)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.label))
    }
}
