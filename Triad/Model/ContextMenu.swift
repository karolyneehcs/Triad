//
//  ContextMenu.swift
//  Triad
//
//  Created by Ana Karolina Costa da Silva on 12/02/21.
//

import UIKit
import CoreData

protocol IndexPathContextMenu {
  func performDelete(_ indexPath: IndexPath)
}

extension IndexPathContextMenu {

  func deleteAction(_ indexPath: IndexPath) -> UIAction {
      return UIAction(title: NSLocalizedString("Delete Activity", comment: ""),
                      image: UIImage(systemName: "trash"),
                      attributes: .destructive) { action in
         self.performDelete(indexPath)
      }
  }
}

