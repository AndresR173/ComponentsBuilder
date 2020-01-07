//
//  ImageViewFactory.swift
//  Beneficios
//
//  Created by Andres Rojas on 12/12/19.
//  Copyright © 2019 Tu Ciudad en Red. All rights reserved.
//

import UIKit

public class ImageViewBuilder {

    // MARK: - Properties

    private let imageView: UIImageView

    // MARK: - Init

    init(_ image: UIImage? = nil) {
        imageView = UIImageView()
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
    }

    // MARK: - Helpers

    public func withCornerRadius(_ radius: CGFloat) -> Self {
        imageView.layer.cornerRadius = radius

        return self
    }

    public func withClipToBounds(enabled: Bool) -> Self {
        imageView.clipsToBounds = enabled

        return self
    }

    public func withContentMode(_ contentMode: UIView.ContentMode) -> Self {
        imageView.contentMode = contentMode

        return self
    }

    public func withTintColor(_ color: UIColor) -> Self {
        imageView.tintColor = color

        return self
    }
}

// MARK: Buildable implementation

extension ImageViewBuilder: Buildable {
    public func build() -> UIImageView {
        return imageView
    }
}
