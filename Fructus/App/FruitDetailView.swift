//
//  FruitDetailView.swift
//  Fructus
//
//  Created by דניאל פינחסוב on 25/08/2021.
//

import SwiftUI

struct FruitDetailView: View {
    
    //mark:properties
    
    var fruit: Fruit
    
    
    //mark:body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack (alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Nutriense
                        FruitNutrientsView(fruit: fruit)
                        
                        //Subheadline
                        Text("Learn more about: \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        
                        //Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }// vstack:
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }//: scroll
            .edgesIgnoringSafeArea(.top)
            
        }//NAVIGATION:
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

    //mark:preview

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: FruitsData[0])
            .previewDevice("iPhone 11 Pro")
    }
}
