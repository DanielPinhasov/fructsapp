//
//  StartButtonView.swift
//  Fructus
//
//  Created by דניאל פינחסוב on 16/08/2021.
//

import SwiftUI

struct StartButtonView: View {
    //Mark -properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //Mark -body
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                            Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }   //BUTTON
        .accentColor(Color.white)
    }
}

//Mark -preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
