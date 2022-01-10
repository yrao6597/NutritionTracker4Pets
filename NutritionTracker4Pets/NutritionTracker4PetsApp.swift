//
//  NutritionTracker4PetsApp.swift
//  NutritionTracker4Pets
//
//  Created by Yvonne Rao on 2022-01-09.
//

import SwiftUI

@main
struct NutritionTracker4PetsApp: App {

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView().navigationBarHidden(true)
            }
        }
    }
}
