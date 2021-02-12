//
//  AddActivity.swift
//  Triad
//
//  Created by Ana Karolina Costa da Silva on 11/02/21.
//

import UIKit

class AddActivity: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .mainGray
    self.setNavigationBar()
    setupModal()
  }

  let activityInput : UILabel = {
    let label = UILabel()
    label.text = "Nome da Atividade:"
    label.textAlignment = .left
    label.textColor = .black
    label.contentMode = .scaleAspectFit
    label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
    }()

  let ActivityField : UITextField = {
    let textField = UITextField()
    textField.backgroundColor = .white
    textField.keyboardType = .default
    textField.keyboardAppearance = .default
    textField.textAlignment = .center
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
    }()

  let lessonInput : UILabel = {
    let label = UILabel()
    label.text = "Assunto:"
    label.textAlignment = .left
    label.textColor = .black
    label.contentMode = .scaleAspectFit
    label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
    }()

  let LessonField : UITextField = {
    let textField = UITextField()
    textField.backgroundColor = .white
    textField.keyboardType = .default
    textField.keyboardAppearance = .default
    textField.textAlignment = .center
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
    }()

  let codeInput : UILabel = {
    let label = UILabel()
    label.text = "Código disciplina:"
    label.textAlignment = .left
    label.textColor = .black
    label.contentMode = .scaleAspectFit
    label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
    }()

  let CodeField : UITextField = {
    let textField = UITextField()
    textField.backgroundColor = .white
    textField.keyboardType = .default
    textField.keyboardAppearance = .default
    textField.textAlignment = .center
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
    }()

  func setNavigationBar() {
    let screenSize: CGRect = UIScreen.main.bounds
    let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 44))
    let navItem = UINavigationItem(title: "")
    let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: nil, action: #selector(done))
    let cancelItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.cancel, target: nil, action: #selector(back))
    navItem.leftBarButtonItem = cancelItem
    navItem.rightBarButtonItem = doneItem
    navBar.setItems([navItem], animated: false)
    self.view.addSubview(navBar)
  }

  @objc func back() {
    self.dismiss(animated: true, completion: nil)
  }

  @objc func done() {
    //save action 
  }

  func setupModal() {

    self.view.addSubview(activityInput)
    activityInput.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 170).isActive = true
    activityInput.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
    activityInput.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true

    self.view.addSubview(ActivityField)
    ActivityField.heightAnchor.constraint(equalToConstant: 44).isActive = true
    ActivityField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200).isActive = true
    ActivityField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
    ActivityField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true

    self.view.addSubview(lessonInput)
    lessonInput.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 250).isActive = true
    lessonInput.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
    lessonInput.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true

    self.view.addSubview(LessonField)
    LessonField.heightAnchor.constraint(equalToConstant: 44).isActive = true
    LessonField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 280).isActive = true
    LessonField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
    LessonField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true

    self.view.addSubview(codeInput)
    codeInput.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 330).isActive = true
    codeInput.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
    codeInput.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true

    self.view.addSubview(CodeField)
    CodeField.heightAnchor.constraint(equalToConstant: 44).isActive = true
    CodeField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 360).isActive = true
    CodeField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
    CodeField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true

  }
}
