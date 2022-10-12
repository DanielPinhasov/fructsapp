//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by דניאל פינחסוב on 26/08/2021.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK:properties
    
    var lablelText: String
    var labelImage: String
    
    //MARK:body
    
    var body: some View {
        HStack {
            Text(lablelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK:preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(lablelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
