import SwiftUI

struct PetManagerView: View {
    @StateObject var ppm = PetProfileManager()
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    NavigationLink("Add New", destination: AddPetView())
                    Spacer()
                        .frame(width: 15.0)
                }
                List {
                    ForEach(ppm.petProfiles, id: \.id) {
                        profile in
                        NavigationLink(
                            destination: PetProfileView(petName: profile.name ?? "", petType: profile.type ?? "", petColor: profile.color ?? ""),
                            label: {
                                PetManagerRowView(petName: profile.name ?? "None")
                            })
                    }
                }.listStyle(PlainListStyle())
            }
            
        }
        .navigationTitle("Pet Manager")
    }
}

struct PetManagerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PetManagerView()
        }
        
    }
}
