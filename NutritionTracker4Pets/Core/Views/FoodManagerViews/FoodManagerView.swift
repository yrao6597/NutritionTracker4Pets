//
//  FoodManagerView.swift
//  NutritionTracker4Pets
//
//  Created by Yvonne Rao on 2022-01-22.
//

import SwiftUI

struct FoodManagerView: View {
    @StateObject var fm = FoodManager()
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    NavigationLink("Add New", destination: AddFoodView())
                }
                List {
                    ForEach(fm.allFood, id: \.id) {
                        food in
                        NavigationLink(
                            destination: FoodProfileView(foodName: food.name ?? "None", foodBrand: food.brand ?? "None", foodType: food.type ?? "None", foodComments: food.comments ?? "None"),
                            label: {
                                FoodManagerRowView(foodName: food.name ?? "None", foodBrand: food.brand ?? "None", foodType: food.type ?? "None")
                            })
                    }
                }.listStyle(PlainListStyle())
            }
        }
    }
}

struct FoodManagerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FoodManagerView()
        }
    }
}
