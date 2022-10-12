//
//  ContentView.swift
//  Fructus
//
//  Created by דניאל פינחסוב on 15/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    //mark:properties
    
    @State private var isShowingSetting: Bool = false
    
    var fruits: [Fruit] = FruitsData
    
    //mark:body
    
    var body: some View {
        NavigationView  {
            List{
                ForEach(fruits.shuffled()){item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSetting = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }//: Button
                    .sheet(isPresented: $isShowingSetting) {
                        SettingsView()
                    }
            )
        }//:NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

    //mark:previw

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: FruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
