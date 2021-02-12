//
//  ActivityController.swift
//  Triad
//
//  Created by Ana Karolina Costa da Silva on 08/02/21.
//

import UIKit

class ActivityController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView.register(ActivityBox.self, forCellWithReuseIdentifier: "cellId")
  }

  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    //return using core data info
         return 3
     }

     override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as? ActivityBox else {return UICollectionViewCell()}
      //delete cells by doing the code by wwdc2020 
         return cell
     }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         return CGSize(width: view.frame.width, height: view.frame.height)
     }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
         return 0
     }
}
