import SwiftUI

struct PetManagerView: View {
    @StateObject var ppm = PetProfileManager()
    var body: some View {
        VStack {
            List {
                ForEach(ppm.petProfiles, id: \.id) {
                    profile in PetManagerRowView(petName: profile.name ?? "None")
                }
            }.listStyle(PlainListStyle())
            ReusableButtonView(icon: "plus")
        }
    }
}

struct PetManagerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PetManagerView()
        }
        
    }
}
