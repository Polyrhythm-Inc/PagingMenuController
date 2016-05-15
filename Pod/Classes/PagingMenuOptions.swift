//
//  PagingMenuOptions.swift
//  PagingMenuController
//
//  Created by Yusuke Kita on 5/17/15.
//  Copyright (c) 2015 kitasuke. All rights reserved.
//

import UIKit

public class PagingMenuOptions {
    public var defaultPage = 0
    public var scrollEnabled = true // in case of using swipable cells, set false
    public var backgroundColor = UIColor.whiteColor()
    public var selectedBackgroundColor = UIColor.whiteColor()
    public var textColor = UIColor.lightGrayColor()
    public var selectedTextColor = UIColor.blackColor()
    public var font = UIFont.systemFontOfSize(16)
    public var selectedFont = UIFont.systemFontOfSize(16)
    public var descFont = UIFont.systemFontOfSize(12)
    public var descTextColor = UIColor.lightGrayColor()
    public var menuPosition: MenuPosition = .Top
    public var menuTitleHeight: CGFloat = 30
    public var menuDescHeight: CGFloat = 24
    public var menuHeight: CGFloat = 54
    public var menuItemMargin: CGFloat = 20
    public var menuItemDividerImage: UIImage?
    public var animationDuration: NSTimeInterval = 0.3
    public var deceleratingRate: CGFloat = UIScrollViewDecelerationRateFast
    public var menuDisplayMode = MenuDisplayMode.Standard(widthMode: PagingMenuOptions.MenuItemWidthMode.Flexible, centerItem: false, scrollingMode: PagingMenuOptions.MenuScrollingMode.PagingEnabled)
    public var menuSelectedItemCenter = true
    public var menuItemMode = MenuItemMode.Underline(height: 3, color: UIColor.blueColor(), horizontalPadding: 0, verticalPadding: 0)
    public var lazyLoadingPage: LazyLoadingPage = .Three
    public var menuControllerSet: MenuControllerSet = .Multiple
    public var menuItemViewContent: MenuItemViewContent = .Text
    public var menuItemCount = 0
    internal let minumumSupportedViewCount = 1
    internal let dummyMenuItemViewsSet = 3
    
    public enum MenuPosition {
        case Top
        case Bottom
    }
    
    public enum MenuScrollingMode {
        case ScrollEnabled
        case ScrollEnabledAndBouces
        case PagingEnabled
    }
    
    public enum MenuItemWidthMode {
        case Flexible
        case Fixed(width: CGFloat)
    }
    
    public enum MenuDisplayMode {
        case Standard(widthMode: MenuItemWidthMode, centerItem: Bool, scrollingMode: MenuScrollingMode)
        case SegmentedControl
        case Infinite(widthMode: MenuItemWidthMode, scrollingMode: MenuScrollingMode)
    }
    
    public enum MenuItemMode {
        case None
        case Underline(height: CGFloat, color: UIColor, horizontalPadding: CGFloat, verticalPadding: CGFloat)
        case RoundRect(radius: CGFloat, horizontalPadding: CGFloat, verticalPadding: CGFloat, selectedColor: UIColor)
    }
    
    public enum LazyLoadingPage {
        case One
        case Three
    }
    
    public enum MenuControllerSet {
        case Single
        case Multiple
    }
    
    public enum MenuItemViewContent {
        case Text, Image, MultilineText
    }
    
    public init() {}
}