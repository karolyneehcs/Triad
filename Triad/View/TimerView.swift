//
//  InitialView.swift
//  Triad
//
//  Created by Ana Karolina Costa da Silva on 09/02/21.
//

import UIKit

class TimerView: UIView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupControls()
  }

  let PauseButton : UIButton = {
    let button = UIButton()
    let largeConfiguration = UIImage.SymbolConfiguration(scale: .large)
    let imageSymbol = UIImage(systemName: "pause", withConfiguration: largeConfiguration)
    let imageSymbolNew = imageSymbol?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(imageSymbolNew, for: .normal)
    button.setTitleColor(.systemPink, for: .normal)
    return button
  }()

  let PlayButton : UIButton = {
    let button = UIButton()
    let largeConfiguration = UIImage.SymbolConfiguration(scale: .large)
    let imageSymbol = UIImage(systemName: "play", withConfiguration: largeConfiguration)
    let imageSymbolNew = imageSymbol?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(imageSymbolNew, for: .normal)
    return button
  }()

  let StopButton : UIButton = {
    let button = UIButton()
    let largeConfiguration = UIImage.SymbolConfiguration(scale: .large)
    let imageSymbol = UIImage(systemName: "stop", withConfiguration: largeConfiguration)
    let imageSymbolNew = imageSymbol?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(imageSymbolNew, for: .normal)
    return button
  }()

  let ConfigureTimerButton : UIButton = {
    let button = UIButton()
    let largeConfiguration = UIImage.SymbolConfiguration(scale: .large)
    let imageSymbol = UIImage(systemName: "slider.vertical.3", withConfiguration: largeConfiguration)
    let imageSymbolNew = imageSymbol?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(imageSymbolNew, for: .normal)
    return button
  }()

  func setupControls() {
//    self.addSubview(PlayButton)
//    PlayButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
//    PlayButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 200).isActive = true
//
//    self.addSubview(StopButton)
//    StopButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 200).isActive = true
//    StopButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 100).isActive = true
//
//    self.addSubview(PauseButton)
//    PauseButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 200).isActive = true
//    PauseButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -100).isActive = true
//
//    self.addSubview(ConfigureTimerButton)
//    ConfigureTimerButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 50).isActive = true
//    ConfigureTimerButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25).isActive = true
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
