//
//  EventCollectionViewCell.swift
//  KudaGoAPITestTask
//
//  Created by Иван Казанцев on 17.03.2021.
//

import UIKit

class EventCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: LoadedImageView!
    
    private var uuid: UUID?
    
    func setup(by event: Event) {
        imageView.image = nil
        nameLabel.text = event.title?.capitalized
        layer.cornerRadius = Constants.CollectionViewSettings.cellCornerRadius
        guard let imageURLString = event.images?.first?.image,
              let imageURL = URL(string: imageURLString) else { return }
        imageView.loadImage(from: imageURL)
    }
}
