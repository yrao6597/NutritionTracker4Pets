import Foundation
import CoreData

class PetProfileManager: ObservableObject {
    // NSManagedObjectModel: programmatic representation of the .xcdatamodeld file
    // top-level class, responsible for initializing the core data stack (loading the model and stores of the model)
    // NSPersistentSStoreCoordinator: setup an underlying storage and executes queries on the store
    // Managed Object Context: create, load, and manipulate managed objects; executes queries on the store
    let container: NSPersistentContainer
    // published so we can subscribe to it from other places
    @Published var petProfiles: [PetProfile] = []
    static let shared = PetProfileManager()
    
    init() {
        container = NSPersistentContainer(name: "CoreData")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Core Data Store failed: \(error.localizedDescription)")
            }
        }
        getAllPetProfiles()
    }
    
    func saveData() {
        do {
            try container.viewContext.save()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func addPetProfile(id: String = UUID().uuidString, name: String, color: String, type: String, dob: Date) {
        // add a new pet
        let petProfile = PetProfile(context: container.viewContext)
        petProfile.id = id
        petProfile.name = name
        petProfile.color = color
        petProfile.type = type
        petProfile.dob = dob
        saveData()
    }
    
    // updatePetProfile
    // deletePetProfile
    
    func getAllPetProfiles() {
        let request = NSFetchRequest<PetProfile>(entityName: "PetProfile")
        do {
            petProfiles = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching \(error)")
        }
    }
    
    
}

