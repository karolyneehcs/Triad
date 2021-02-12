//
//  TodoCard.swift
//  Triad
//
//  Created by Ana Karolina Costa da Silva on 05/02/21.
//

import UIKit

class TodoCard: UIView {

  var buttonHandler: () -> Void = { }

  let titleLabel : UILabel = {
    let label = UILabel()
    label.text = "TODO"
    label.textAlignment = .left
    label.textColor = .mainBlue
    label.contentMode = .scaleAspectFit
    label.font = UIFont.systemFont(ofSize: 30, weight: .black)
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
    }()

  let suggestionLabel : UILabel = {
    let label = UILabel()
    label.text = "SUGGESTIONS"
    label.textAlignment = .left
    label.textColor = .mainBlue
    label.contentMode = .scaleAspectFit
    label.font = UIFont.systemFont(ofSize: 30, weight: .black)
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
    }()

  let todoCard : UIView = {
    let screenSize: CGRect = UIScreen.main.bounds
    let card = UIView()
    card.backgroundColor = .mainGray
    card.layer.cornerRadius = 30.0
    card.layer.maskedCorners = [.layerMaxXMinYCorner]
    card.translatesAutoresizingMaskIntoConstraints = false
    return card
  }()

  lazy var addActivity : UIButton = {
    let button = UIButton()
    let largeConfiguration = UIImage.SymbolConfiguration(scale: .large)
    let imageSymbol = UIImage(systemName: "plus", withConfiguration: largeConfiguration)
    let imageSymbolNew = imageSymbol?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(imageSymbolNew, for: .normal)
    button.setTitleColor(.systemPink, for: .normal)
    button.addTarget(self, action: #selector(addActivityHandler), for: .touchUpInside)
    return button
  }()

  @objc func addActivityHandler() {
    buttonHandler()
  }

  override init(frame: CGRect) {
     super.init(frame: frame)
      setupLayouts()
   }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func setupLayouts() {
    self.addSubview(todoCard)
    todoCard.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
    todoCard.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7).isActive = true
    todoCard.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    todoCard.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true

    self.addSubview(titleLabel)
    titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
    titleLabel.topAnchor.constraint(equalTo: self.todoCard.topAnchor, constant: 10).isActive = true

    self.addSubview(suggestionLabel)
    suggestionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
    suggestionLabel.topAnchor.constraint(equalTo: self.todoCard.topAnchor, constant: 450).isActive = true

    self.addSubview(addActivity)
    addActivity.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -153).isActive = true
    addActivity.leadingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor, constant: 260).isActive = true
  }
}
