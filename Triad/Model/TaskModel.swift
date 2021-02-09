//
//  TaskModel.swift
//  Triad
//
//  Created by Ana Karolina Costa da Silva on 09/02/21.
//

import UIKit
import CoreData

class TaskModel {

  let coreDataStack = CoreDataStack.shared

  func createTask(title: String, code: String, lesson: String) -> Bool {
    let task = Task()
    task.title = String(title)
    task.code = String(code)
    task.lesson = String(lesson)

    do {
        try coreDataStack.mainContext.save()
        return true
    } catch let error as NSError {
        print(error)
        return false
      }
  }

  func readAllTask() -> Task? {
      let dailyRequest: NSFetchRequest<Task> = Task.fetchRequest()
      do {
          let dailyResults = try coreDataStack.mainContext.fetch(dailyRequest)
          if dailyResults.count > 0 {
              if let dailyResult = dailyResults.first { return dailyResult } else { return nil }
          }
      } catch let error as NSError {
          print(error)
          return nil
      }
      return nil
  }

  func deleteDaily(id: UUID) -> Bool {
      let dailyRequest: NSFetchRequest<Task> = Task.fetchRequest()
      dailyRequest.predicate = NSPredicate(format: "id == %@", id as CVarArg)

      do {
          let dailyResults = try coreDataStack.mainContext.fetch(dailyRequest)
          if let object = dailyResults.first {
              coreDataStack.mainContext.delete(object)
              coreDataStack.saveContext()
              return true
          } else {
              return false
          }
      } catch let error as NSError {
          print(error)
          return false
      }
  }

}
