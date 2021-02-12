//
//  ActivityBox.swift
//  Triad
//
//  Created by Ana Karolina Costa da Silva on 05/02/21.
//

import UIKit

class ActivityBox: UICollectionViewCell {
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupCollection()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  let todoBox : UIView = {
    let box = UIView()
    box.layer.cornerRadius = 30.0
    box.backgroundColor = .mainWhite
    box.layer.shadowColor = UIColor.shadowBlue.cgColor
    box.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
    box.layer.shadowRadius = 5.0
    box.layer.shadowOpacity = 0.69
    box.translatesAutoresizingMaskIntoConstraints = false
    return box
  }()

  var tituloAtividade : UILabel = {
    let tituloAtividade = UILabel()
    tituloAtividade.text = "Entregar Artigo Científico"
    tituloAtividade.font = UIFont.systemFont(ofSize: 17)
    tituloAtividade.textColor = .blueFont
    tituloAtividade.textAlignment = .left
    tituloAtividade.translatesAutoresizingMaskIntoConstraints = false
    return tituloAtividade
  }()

  let dotSymbol1 : UILabel = {
    let dotSymbol = UILabel()
    dotSymbol.text = "."
    dotSymbol.font = .systemFont(ofSize: 50)
    dotSymbol.textColor = .systemBlue
    dotSymbol.translatesAutoresizingMaskIntoConstraints = false
    return dotSymbol
  }()

  let dotSymbol2 : UILabel = {
    let dotSymbol = UILabel()
    dotSymbol.text = "."
    dotSymbol.font = .systemFont(ofSize: 50)
    dotSymbol.textColor = .systemBlue
    dotSymbol.translatesAutoresizingMaskIntoConstraints = false
    return dotSymbol
  }()

  var codigoAssunto : UILabel = {
    let codigoAssunto = UILabel()
    codigoAssunto.text = "01.502.19"
    codigoAssunto.font = UIFont.systemFont(ofSize: 13)
    codigoAssunto.textColor = .lightGray
    codigoAssunto.textAlignment = .left
    codigoAssunto.translatesAutoresizingMaskIntoConstraints = false
    return codigoAssunto
  }()

  var assunto : UILabel = {
    let assunto = UILabel()
    assunto.text = "Metodologia"
    assunto.font = UIFont.systemFont(ofSize: 13)
    assunto.textColor = .lightGray
    assunto.textAlignment = .left
    assunto.translatesAutoresizingMaskIntoConstraints = false
    return assunto
  }()

  func setupCollection() {
    self.addSubview(todoBox)
    self.todoBox.heightAnchor.constraint(equalToConstant: 65).isActive = true
    self.todoBox.widthAnchor.constraint(equalToConstant: 380).isActive = true
    self.todoBox.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    self.todoBox.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true

    self.addSubview(tituloAtividade)
    self.tituloAtividade.widthAnchor.constraint(equalToConstant: 200).isActive = true
    self.tituloAtividade.heightAnchor.constraint(equalToConstant: 30).isActive = true
    self.tituloAtividade.leadingAnchor.constraint(equalTo: self.todoBox.leadingAnchor, constant: 80).isActive = true
    self.tituloAtividade.topAnchor.constraint(equalTo: self.todoBox.topAnchor, constant: 3).isActive = true

    self.addSubview(assunto)
    self.assunto.widthAnchor.constraint(equalToConstant: 100).isActive = true
    self.assunto.heightAnchor.constraint(equalToConstant: 30).isActive = true
    self.assunto.leadingAnchor.constraint(equalTo: self.todoBox.leadingAnchor, constant: 180).isActive = true
    self.assunto.trailingAnchor.constraint(equalTo: self.todoBox.leadingAnchor).isActive = true
    self.assunto.topAnchor.constraint(equalTo: self.todoBox.topAnchor, constant: 30).isActive = true

    self.addSubview(dotSymbol1)
    self.dotSymbol1.widthAnchor.constraint(equalToConstant: 70).isActive = true
    self.dotSymbol1.heightAnchor.constraint(equalToConstant: 70).isActive = true
    self.dotSymbol1.leadingAnchor.constraint(equalTo: self.todoBox.leadingAnchor, constant: 167).isActive = true
    self.dotSymbol1.topAnchor.constraint(equalTo: self.todoBox.topAnchor, constant: -5).isActive = true

    self.addSubview(codigoAssunto)
    self.codigoAssunto.widthAnchor.constraint(equalToConstant: 100).isActive = true
    self.codigoAssunto.heightAnchor.constraint(equalToConstant: 30).isActive = true
    self.codigoAssunto.leadingAnchor.constraint(equalTo: self.todoBox.leadingAnchor, constant: 90).isActive = true
    self.codigoAssunto.trailingAnchor.constraint(equalTo: self.todoBox.leadingAnchor).isActive = true
    self.codigoAssunto.topAnchor.constraint(equalTo: self.todoBox.topAnchor, constant: 30).isActive = true

    self.addSubview(dotSymbol2)
    self.dotSymbol2.widthAnchor.constraint(equalToConstant: 70).isActive = true
    self.dotSymbol2.heightAnchor.constraint(equalToConstant: 70).isActive = true
    self.dotSymbol2.leadingAnchor.constraint(equalTo: self.todoBox.leadingAnchor, constant: 77).isActive = true
    self.dotSymbol2.topAnchor.constraint(equalTo: self.todoBox.topAnchor, constant: -5).isActive = true

  }
}
