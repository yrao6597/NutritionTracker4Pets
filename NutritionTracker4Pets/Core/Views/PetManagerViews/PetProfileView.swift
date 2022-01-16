//
//  PetProfileView.swift
//  NutritionTracker4Pets
//
//  Created by Yvonne Rao on 2022-01-16.
//

import SwiftUI

struct PetProfileView: View {
    let petName: String
    let petType: String
    let petColor: String
    var body: some View {
        VStack {
            VStack {
                Image("catpic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .shadow(radius: 8)
                Spacer().frame(height: 20)
                Text("Hulu")
                    .font(.title)
                    .bold()
            }
            
            Spacer().frame(height: 30)
            
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Text("Name:")
                    Text(petName)
                }
                HStack {
                    Text("Color:")
                    Text(petColor)
                }
                HStack {
                    Text("Type:")
                    Text(petType)
                }
                
            }
            Spacer().frame(height: 40)
            Button {
                print("Button tapped")
            } label: {
                Text("Edit Profile")
                    .bold()
                    .frame(width: 260, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
        }
    }
}

struct PetProfileView_Previews: PreviewProvider {
    static var petName_ex = "Hulu"
    static var petType_ex = "Ragdoll"
    static var petColor_ex = "Grey"
    static var previews: some View {
        PetProfileView(petName: petName_ex,
                       petType: petType_ex,
                       petColor: petColor_ex)
            .previewLayout(.sizeThatFits)
    }
}
