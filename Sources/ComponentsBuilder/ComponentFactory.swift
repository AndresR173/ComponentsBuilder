//
//  ComponentFactory.swift
//  ComponentsFactory
//
//  Created by Andres Rojas on 27/11/19.
//  Copyright © 2019 Andres Rojas. All rights reserved.
//

import UIKit

protocol Buildable {
    associatedtype C

    func build() -> C
}

open class ComponentFactory {

    // MARK: - Helpers

    static func createLabel(_ text: String? = nil) -> LabelFactory {
        return LabelFactory(text)
    }

    public static func createButton(_ text: String? = nil) -> ButtonFactory {
           return ButtonFactory(text)
    }

    static func createTextField(_ text: String? = nil, placeholder: String? = nil) -> TextFieldFactory {
        return TextFieldFactory(text, placeholder: placeholder)
    }

    static func createImageView(_ image: UIImage? = nil) -> ImageViewFactory {
        return ImageViewFactory(image)
    }

    static func createView() -> ViewFactory {
        return ViewFactory()
    }

    static func createStackView(axis: NSLayoutConstraint.Axis = .vertical) -> StackViewFactory {
        return StackViewFactory(axis: axis)
    }
}
