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

public class ComponentBuilder {

    // MARK: - Helpers

    public static func label(_ text: String? = nil) -> LabelBuilder {
        return LabelBuilder(text)
    }

    public static func button(_ text: String? = nil) -> ButtonBuilder {
           return ButtonBuilder(text)
    }

    public static func textField(_ text: String? = nil, placeholder: String? = nil) -> TextFieldBuilder {
        return TextFieldBuilder(text, placeholder: placeholder)
    }

    public static func imageView(_ image: UIImage? = nil) -> ImageViewBuilder {
        return ImageViewBuilder(image)
    }

    public static func view() -> ViewBuilder {
        return ViewBuilder()
    }

    public static func stackView(axis: NSLayoutConstraint.Axis = .vertical) -> StackViewBuilder {
        return StackViewBuilder(axis: axis)
    }
}
