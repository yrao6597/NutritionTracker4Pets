import SwiftUI

struct PetManagerRowView: View {
    let petName: String
    
    // @StateObject var ppm = PetProfileManager()

    var body: some View {
        ZStack {
            HStack {
                ProfilePicView()
                Spacer()
                    .frame(width: 15.0)
                Text(petName)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                Spacer()
                ReusableButtonView(icon: "chevron.right")
            }
        }
    }
}

struct PetManagerRowView_Previews: PreviewProvider {
    static var petName_ex = "Hulu"
    static var previews: some View {
        PetManagerRowView(petName: petName_ex)
            .previewLayout(.sizeThatFits)
    }
}

