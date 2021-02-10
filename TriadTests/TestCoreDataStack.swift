//
//  TestCoreDataStack.swift
//  TriadTests
//
//  Created by Ana Karolina Costa da Silva on 09/02/21.
//

import CoreData
import Triad

class TestCoreDataStack: CoreDataStack {

  override init() {
      super.init()

      // 1
    let coreDataStack = CoreDataStack()
    let persistentStoreDescription = NSPersistentStoreDescription()
    persistentStoreDescription.type = NSInMemoryStoreType

    let container = NSPersistentContainer(
          name: coreDataStack.modelName)

        // 3
        container.persistentStoreDescriptions = [persistentStoreDescription]

        container.loadPersistentStores { _, error in
          if let error = error as NSError? {
            fatalError("Unresolved error \(error), \(error.userInfo)")
          }
        }

        // 4
    storeContainer = container

  }

}
