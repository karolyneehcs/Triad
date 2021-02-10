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
    self.addSubview(timerView)
    NSLayoutConstraint.activate([self.timerView.topAnchor.constraint(equalTo: self.topAnchor),
                                 self.timerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                                 self.timerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                 self.timerView.leadingAnchor.constraint(equalTo: self.leadingAnchor)])

   }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
