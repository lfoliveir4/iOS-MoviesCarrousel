//
//  GetScale.swift
//  moviescarousel
//
//  Created by Luis Filipe Alves de Oliveira on 24/06/21.
//

import Foundation
import SwiftUI


struct GetScale {
    func getScale(proxy: GeometryProxy) -> CGFloat {
        var scale: CGFloat = 1
        
        let x = proxy.frame(in: .global).minX
        
        let diff = abs(x - 32)
        if diff < 100 {
            scale = 1 + (100 - diff) / 500
        }
    
        return scale
    }
}
