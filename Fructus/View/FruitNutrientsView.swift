//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by דניאל פינחסוב on 25/08/2021.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    //mark:properties
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Suger", "Fat", "Protein", "Vitamins", "Minerals"]
    //mark:body
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }//: Box
        
    }
}

    //mark:preview

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: FruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
