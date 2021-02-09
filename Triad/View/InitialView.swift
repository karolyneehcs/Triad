//
//  InitialView.swift
//  Triad
//
//  Created by Ana Karolina Costa da Silva on 08/02/21.
//

import UIKit

class InitialView: UIView {
  let todoCard : TodoCard = {
    let todoCard = TodoCard()
    todoCard.translatesAutoresizingMaskIntoConstraints = false
    return todoCard
  }()
  let activityBox : ActivityBox = {
    let activityBox = ActivityBox()
    activityBox.translatesAutoresizingMaskIntoConstraints = false
    return activityBox
  }()

  override init(frame: CGRect) {
     super.init(frame: frame)
    self.backgroundColor = .mainBlue
    self.addSubview(todoCard)
    NSLayoutConstraint.activate([self.todoCard.topAnchor.constraint(equalTo: self.topAnchor),
                                 self.todoCard.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                                 self.todoCard.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                 self.todoCard.leadingAnchor.constraint(equalTo: self.leadingAnchor)])
    self.addSubview(activityBox)
    NSLayoutConstraint.activate([self.activityBox.topAnchor.constraint(equalTo: self.topAnchor),
                                 self.activityBox.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                                 self.activityBox.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                 self.activityBox.leadingAnchor.constraint(equalTo: self.leadingAnchor)])

   }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
