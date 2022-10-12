//
//  FructusApp.swift
//  Fructus
//
//  Created by דניאל פינחסוב on 15/08/2021.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
