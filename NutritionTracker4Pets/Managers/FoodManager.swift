import Foundation
import CoreData

class FoodManager: ObservableObject {
    let container: NSPersistentContainer
    @Published var allFood: [Food] = []
    static let shared = FoodManager()
    
    init() {
        container = NSPersistentContainer(name: "CoreData")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Core Data Store failed: \(error.localizedDescription)")
            }
        }
        getAllFood()
    }
    
    func saveData() {
        do {
            try container.viewContext.save()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func addFood(id: String = UUID().uuidString, name: String, type: String, brand: String, comments: String) {
        // add a new food item
        let food = Food(context: container.viewContext)
        food.id = id
        food.name = name
        food.type = type
        food.comments = comments
        saveData()
    }
    
    func getAllFood() {
        let request = NSFetchRequest<Food>(entityName: "Food")
        do {
            allFood = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching \(error)")
        }
    }
    
    
}


