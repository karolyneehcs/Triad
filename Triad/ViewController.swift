//
//  ViewController.swift
//  Triad
//
//  Created by Ana Karolina Costa da Silva on 05/02/21.
//

import UIKit

class ViewController: UIViewController {

  let taskModel = TaskModel(managedObject: CoreDataStack.shared.mainContext, coreDataStack: CoreDataStack.shared)
  var data: [Task] = [] {didSet { customView.collectionView.reloadData() } }
  var customView : InitialView!

  override func viewDidLoad() {
    super.viewDidLoad()
    customView = InitialView(todoCardHandler: { [weak self] in
      let addDataViewController = AddActivity() 
      addDataViewController.delegate = self
      self?.present(addDataViewController, animated: true, completion: nil)
    })
    data = getCellsData()
    customView.collectionView.delegate = self
    customView.collectionView.dataSource = self
    self.view = customView
    // Do any additional setup after loading the view.
  }

  func getCellsData() -> [Task] {
    return taskModel.readAllTask()
  }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, IndexPathContextMenu {

  func performDelete(_ indexPath: IndexPath) {

    Swift.debugPrint("delete: \(taskModel.deleteTask(task: data[indexPath.row]))")
    data = getCellsData()
    self.dismiss(animated: true, completion: nil)
  }

  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return getCellsData().count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as? ActivityBox else {return UICollectionViewCell()}
    cell.tituloAtividade.text = data[indexPath.row].title
    cell.assunto.text = data[indexPath.row].lesson
    cell.codigoAssunto.text = data[indexPath.row].code
    return cell
  }

  func collectionView(_ collectionView: UICollectionView, contextMenuConfigurationForItemAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {
      return UIContextMenuConfiguration(identifier: nil, previewProvider: nil) { suggestedActions in
          let deleteAction = self.deleteAction(indexPath)
        return UIMenu(title: "", children: [deleteAction])
      }
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: 380, height: 65)
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 10
  }

}


extension ViewController: AddDataDelegate {
  func didSaveInput(title: String, code: String, lesson: String) {
        print("ViewController recebeu o Input aqui O:")
        taskModel.createTask(title: title, code: code, lesson: lesson)
        data = getCellsData()
        //faz algo com o data que recebeu da AddDataViewController
    }
}
