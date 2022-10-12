//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by דניאל פינחסוב on 25/08/2021.
//

import SwiftUI

struct FruitHeaderView: View {
    
    //mark:properties
    
    var fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    
    //mark:body
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }// zstac:
        .frame(height:440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

    //mark:preview

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: FruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
