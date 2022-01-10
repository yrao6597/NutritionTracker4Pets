import SwiftUI

struct PetManagerView: View {
    @StateObject var ppm = PetProfileManager()
    var body: some View {
        VStack {
            List {
                ForEach(ppm.petProfiles, id: \.id) {
                    profile in Text(profile.name ?? "NO_NAME")
                }
            }.listStyle(PlainListStyle())
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
