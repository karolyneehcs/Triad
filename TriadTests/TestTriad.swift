//
//  TestTriad.swift
//  TriadTests
//
//  Created by Ana Karolina Costa da Silva on 10/02/21.
//

import XCTest
@testable import Triad
import CoreData

class TestModelTriad: XCTestCase {

  var taskModel : TaskModel!
  var coreDataStack : CoreDataStack!

  override func setUp() {
    super.setUp()
    coreDataStack = TestCoreDataStack()
    taskModel = TaskModel(managedObject: coreDataStack.mainContext, coreDataStack: coreDataStack)
  }

  override func tearDown() {
    coreDataStack = nil
    taskModel = nil
    super.tearDown()
  }

  func testCreateTask_Task_True() {
    // given
    let title = "Fazer probest"
    let code = "502.01.29"
    let assunto = "ProbEst"

    // when
    let sut = taskModel.createTask(title: title, code: code, lesson: assunto)

    //then
    XCTAssertTrue(sut)
  }

  func testReadAllTask_Tasks() {
    //given
    let title = "Fazer probest"
    let code = "502.01.29"
    let assunto = "ProbEst"
    taskModel.createTask(title: title, code: code, lesson: assunto)

    //when
    let sut = taskModel.readAllTask()
    //then
    XCTAssertNotNil(sut)
  }

  func testDeleteTask_True(){
    //given
    let title = "Fazer probest"
    let code = "502.01.29"
    let assunto = "ProbEst"
    taskModel.createTask(title: title, code: code, lesson: assunto)
    let taskDel = taskModel.readTask()!
    //when
    let sut = taskModel.deleteTask(task: taskDel)
    //then
    XCTAssertTrue(sut)
  }

}
