//import SwiftUI
//
//struct PetManagerRowView: View {
//    @StateObject var ppvm = PetProfileManager()
//    let petProfile: PetProfile
//    var body: some View {
//        HStack(spacing: 0) {
//            ProfilePicView()
//            Spacer()
//                .frame(width: 10.0)
//            Text("\(petProfile.name ?? "NO_NAME")")
//                .font(.title3)
//                .fontWeight(.semibold)
//                .frame(minWidth:50)
//            Spacer()
//            ReusableButtonView(icon: "chevron.right")
//        }
//    }
//}
//
//struct PetManagerRowView_Previews: PreviewProvider {
//    // refactoring??
//    static var profile1 = PetProfile(name: "Hulu", color: "Grey", type: "Ragdoll", dob: Date())
//    static var previews: some View {
//        Group {
//            PetManagerRowView(petProfile: profile1)
//        }.previewLayout(.sizeThatFits)
//        
//    }
//}
