//
//  InitialView.swift
//  Triad
//
//  Created by Ana Karolina Costa da Silva on 08/02/21.
//

import UIKit

protocol AddDataDelegate: class {
  func didSaveInput(title: String, code: String, lesson: String)
}

class InitialView: UIView {

  lazy var todoCard : TodoCard = {
    let todoCard = TodoCard()
    todoCard.translatesAutoresizingMaskIntoConstraints = false
    return todoCard
  }()

  let addActivity : AddActivity = {
    let addActivity = AddActivity()
    return addActivity
  }()

  let collectionView: UICollectionView = {
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    layout.scrollDirection = .vertical
    layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
    layout.itemSize = CGSize(width: 380, height: 65)
    collectionView.register(ActivityBox.self, forCellWithReuseIdentifier: "cellId")
    collectionView.backgroundColor = .clear
    collectionView.isScrollEnabled = true
    return collectionView
  }()

  let activityController : ActivityController = {
    let activityController = ActivityController()
    return activityController
  }()

  let timerView: TimerView = {
    let timerView = TimerView()
    timerView.translatesAutoresizingMaskIntoConstraints = false
    return timerView
  }()

  let PauseButton : UIButton = {
    let button = UIButton()
    let mediumConfiguration = UIImage.SymbolConfiguration(scale: .medium)
    let imageSymbol = UIImage(systemName: "stop", withConfiguration: mediumConfiguration)
    let imageSymbolNew = imageSymbol?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(imageSymbolNew, for: .normal)
    button.setTitleColor(.systemPink, for: .normal)
    return button
  }()

  init(todoCardHandler : @escaping () -> Void) {
    super.init(frame: .zero)

    self.todoCard.buttonHandler = todoCardHandler

    self.isUserInteractionEnabled = true
    collectionView.isUserInteractionEnabled = true
    self.backgroundColor = .mainBlue

    self.addSubview(timerView)
    NSLayoutConstraint.activate([self.timerView.topAnchor.constraint(equalTo: self.topAnchor),
                                 self.timerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                                 self.timerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                 self.timerView.leadingAnchor.constraint(equalTo: self.leadingAnchor)])

    self.addSubview(todoCard)
    NSLayoutConstraint.activate([self.todoCard.topAnchor.constraint(equalTo: self.topAnchor),
                                 self.todoCard.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                                 self.todoCard.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                 self.todoCard.leadingAnchor.constraint(equalTo: self.leadingAnchor)])
//    self.addSubview(activityBox)
//    NSLayoutConstraint.activate([self.activityBox.topAnchor.constraint(equalTo: self.topAnchor),
//                                 self.activityBox.bottomAnchor.constraint(equalTo: self.bottomAnchor),
//                                 self.activityBox.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//                                 self.activityBox.leadingAnchor.constraint(equalTo: self.leadingAnchor)])

    self.addSubview(collectionView)
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([self.collectionView.topAnchor.constraint(equalTo: todoCard.todoCard.topAnchor, constant: 50),
                                 self.collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
                                 self.collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
                                 self.collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -200)])

   }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

