//
//  CDManager.swift
//  Perpus
//
//  Created by naufalazizz on 08/05/22.
//

// tutorial azamsharp
import Foundation
import CoreData

class CDManager {
    static let shared = CDManager()
    var persistentContainer: NSPersistentContainer!
    
    init() {
        persistentContainer = NSPersistentContainer(name: "Perpus")
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Core Data Store failed \(error.localizedDescription)")
            }
        }
    }
    func getAllBuku() -> [Buku] {
        let fetchRequest: NSFetchRequest<Buku> = Buku.fetchRequest()
        
        do {
            return try persistentContainer.viewContext.fetch(fetchRequest)
        } catch {
            return []
        }
    }
}
// close tutorial azamsharp
