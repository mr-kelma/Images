//
//  ImagesCell.swift
//  Images
//
//  Created by Valery Keplin on 10.11.22.
//

import UIKit

class ImagesCell: UICollectionViewCell {
    
    static let reuseId = "ImagesCell"
    
    private let imageImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .lightGray
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let checkMark: UIImageView = {
        let image = UIImage(named: "checkMark")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.alpha = 0
        return imageView
    }()
    
    override var isSelected: Bool {
        didSet {
            updateSelectedState()
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageImageView.image = nil
    }
    
    private func updateSelectedState() {
        imageImageView.alpha = isSelected ? 0.7 : 1.0
        checkMark.alpha = isSelected ? 1.0 : 0.0
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        updateSelectedState()
        setupImageImageView()
        setupCheckmarkView()
    }
    
    private func setupImageImageView() {
        addSubview(imageImageView)
        imageImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        imageImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        imageImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    }
    
    private func setupCheckmarkView() {
        addSubview(checkMark)
        checkMark.trailingAnchor.constraint(equalTo: imageImageView.trailingAnchor, constant: -8).isActive = true
        checkMark.bottomAnchor.constraint(equalTo: imageImageView.bottomAnchor, constant: -8).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
