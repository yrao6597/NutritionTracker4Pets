import SwiftUI

struct FoodManagerRowView: View {
    let foodName: String
    let foodBrand: String
    let foodType: String
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                    .frame(width: 20.0)
                VStack(alignment: .leading) {
                    Text(foodName)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                    Text(foodBrand)
                        .font(.title3)
                }
                Spacer()
                Text(foodType)
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.gray)
                
            }
        }
    }
}

struct FoodManagerRowView_Previews: PreviewProvider {
    static var foodName_ex = "Chicken Meal"
    static var foodBrand_ex = "Ziwi"
    static var foodType_ex = "Dry"
    static var previews: some View {
        FoodManagerRowView(foodName: foodName_ex, foodBrand: foodBrand_ex, foodType: foodType_ex)
            .previewLayout(.sizeThatFits)
    }
}


