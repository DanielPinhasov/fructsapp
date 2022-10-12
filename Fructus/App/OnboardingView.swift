//
//  OnboardingView.swift
//  Fructus
//
//  Created by דניאל פינחסוב on 16/08/2021.
//

import SwiftUI

struct OnboardingView: View {
    
    // mark- properties
    
    var Fruits: [Fruit] = FruitsData
    

    // mark- body
    var body: some View {
        TabView{
            ForEach(Fruits[0...5]){item in
                //FruitCardView()
                FruitCardView(fruit: item)
            } //LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

//mark- preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(Fruits: FruitsData)
            .previewDevice("iphone 11 Pro")
    }
}
