//
//  TabBarController.swift
//  Nutrivurv
//
//  Created by Dillon on 8/5/20.
//  Copyright © 2020 Lambda School. All rights reserved.

import UIKit

@available(iOS 8.0, *)
open class TabBarItem: UITabBarItem {
    
    /// Customize content view
    open var contentView: TabBarItemContentView?
    
    // MARK: UIBarItem properties
    open override var title: String? // default is nil
        {
        didSet { self.contentView?.title = title }
    }
    
    open override var image: UIImage? // default is nil
        {
        didSet { self.contentView?.image = image }
    }
    
    // MARK: UITabBarItem properties
    open override var selectedImage: UIImage? // default is nil
        {
        didSet { self.contentView?.selectedImage = selectedImage }
    }
    
    open override var badgeValue: String? // default is nil
        {
        get { return contentView?.badgeValue }
        set(newValue) { contentView?.badgeValue = newValue }
    }
    
    /// Override UITabBarItem.badgeColor, make it available for iOS8.0 and later.
    /// If this item displays a badge, this color will be used for the badge's background. If set to nil, the default background color will be used instead.
    @available(iOS 8.0, *)
    open override var badgeColor: UIColor? {
        get { return contentView?.badgeColor }
        set(newValue) { contentView?.badgeColor = newValue }
    }
    
    open override var tag: Int // default is 0
        {
        didSet { self.contentView?.tag = tag }
    }
    
    /* The unselected image is autogenerated from the image argument. The selected image
     is autogenerated from the selectedImage if provided and the image argument otherwise.
     To prevent system coloring, provide images with UIImageRenderingModeAlwaysOriginal (see UIImage.h)
     */
    public init(_ contentView: TabBarItemContentView = TabBarItemContentView(), title: String? = nil, image: UIImage? = nil, selectedImage: UIImage? = nil, tag: Int = 0) {
        super.init()
        self.contentView = contentView
        self.setTitle(title, image: image, selectedImage: selectedImage, tag: tag)
    }
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func setTitle(_ title: String? = nil, image: UIImage? = nil, selectedImage: UIImage? = nil, tag: Int = 0) {
        self.title = title
        self.image = image
        self.selectedImage = selectedImage
        self.tag = tag
    }
    
}
