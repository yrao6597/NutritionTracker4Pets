import SwiftUI

enum Type: String, CaseIterable {
    case wet = "Wet"
    case dry = "Dry"
    case freezeDried = "Freeze-Dried"
    case raw = "Raw"
    case other = "Other"
    
    var foodType: String {
        return rawValue
    }
}
struct AddFoodView: View {
    @StateObject var fm = FoodManager()
    @Environment(\.presentationMode) var presentationMode
    @State var type: Type = .wet // default
    @State var brand: String = ""
    @State var name: String = ""
    @State var comments: String = ""
    var body: some View {
        VStack {
            Form {
                TextField("Brand", text: $brand)
                TextField("Name", text: $name)
                Picker(selection: $type, label: Text("Type")) {
                    ForEach(Type.allCases, id: \.self) {
                        foodType in Text(foodType.rawValue)
                    }
                }
                ZStack {
                    if comments.isEmpty {
                        // need to move placeholder to top-left
                        Text("Comments")
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                            .lineLimit(10)
                            .padding([.bottom, .trailing])
                    }
                    TextEditor(text: $comments)
                        .frame(width: 375.0, height: 120.0, alignment: .center)
                        .cornerRadius(15.0)
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                }
                
            }
            Button(action: {
                fm.addFood(name: name, type: type.foodType, brand: brand, comments: comments)
            }, label: {
                Text("Save")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .font(.title2)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(15.0)
                    .padding(15)
            })
            .navigationTitle("Add Food Record")
        }
    }
}

struct AddFoodView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddFoodView()
        }
    }
}
