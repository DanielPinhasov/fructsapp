//
//  SettingsView.swift
//  Fructus
//
//  Created by דניאל פינחסוב on 26/08/2021.
//

import SwiftUI

struct SettingsView: View {
    
    //mark:properties
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //mark:body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20){
                    //MARK:Section1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(lablelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        
                        HStack(alignment: .center, spacing: 10) {
                            
                            Image("logo")
                                .resizable()
                                .scaleEffect()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK:Section2
                    
                    GroupBox(
                        label: SettingsLabelView(lablelText: "Customimzation", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle switch in this box. That way it stars the onboarding process and you will see the welcome screen again")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                        
                        
                    }
                    
                    
                    //MARK:Section3
                    
                    GroupBox(
                        label: SettingsLabelView(lablelText:"Application", labelImage: "apps.iphone")
                    ) {
                        SettingRowView(name: "Developer", content: "Daniel Pinhasov")
                        SettingRowView(name: "Designer", content: "Robert Petras")
                        SettingRowView(name: "Compatibility", content: "IOS 14")
                        SettingRowView(name: "Website", linkLabel: "SwiftUi Masterclass",linkDestination: "swiftuimasterclass.com")
                        SettingRowView(name: "Twitter",linkLabel: "@RobertPetras",linkDestination: "twitter.com/robertpetras")
                        SettingRowView(name: "SwiftUI",content: "2.0")
                        SettingRowView(name: "Version",content: "1.1.0")
                    } //:
                    
                    
                }//: Vstack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
                
            }//:Scroll
        }//: Navigation
    }
}

//mark:preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
