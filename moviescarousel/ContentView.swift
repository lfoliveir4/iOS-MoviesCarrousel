//
//  ContentView.swift
//  moviescarousel
//
//  Created by Luis Filipe Alves de Oliveira on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 50) {
                        ForEach(0..<20) { num in
                            GeometryReader { proxy in
                                NavigationLink(
                                    destination: Image("Image"),
                                    label: {
                                        VStack {
                                            let scale = GetScale().getScale(proxy: proxy)
                                            
                                            ImageCaroussel(scale: scale)
                                        }
                                    })
                            }.frame(width: 125, height: 300)
                        }
                    }.padding(32)
                }
            }.navigationTitle("Carousel")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
