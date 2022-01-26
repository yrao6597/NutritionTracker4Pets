import SwiftUI

struct FoodProfileView: View {
    let foodName: String
    let foodBrand: String
    let foodType: String
    let foodComments: String
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FoodProfileView_Previews: PreviewProvider {
    static var foodName_ex = "Chicken Meal"
    static var foodType_ex = "Wet"
    static var foodComments_ex = "Loves it"
    static var foodBrand_ex = "Instinct"
    static var previews: some View {
        FoodProfileView(
            foodName: foodName_ex, foodBrand: foodBrand_ex, foodType: foodType_ex, foodComments: foodComments_ex
        )
    }
}
