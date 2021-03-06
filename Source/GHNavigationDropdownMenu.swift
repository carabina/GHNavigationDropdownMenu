//
//  GHNavigationDropdownMenu.swift
//  GHNavigationDropdownMenu
//
//  Created by Pham Ba Tho on 6/30/15.
//  Modified by Gunnar Hafdal after september 2017
//  Copyright (c) 2015 PHAM BA THO. All rights reserved.
//

//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import UIKit

// MARK: NavigationDropdownMenu
open class GHNavigationDropdownMenu: UIView {
    
    // The color of menu title. Default is darkGrayColor()
    open var menuTitleColor: UIColor! {
        get {
            return self.configuration.menuTitleColor
        }
        set(value) {
            self.configuration.menuTitleColor = value
        }
    }

    // The height of the cell. Default is 50
    open var cellHeight: CGFloat! {
        get {
            return self.configuration.cellHeight
        }
        set(value) {
            self.configuration.cellHeight = value
        }
    }

    // The color of the cell background. Default is whiteColor()
    open var cellBackgroundColor: UIColor! {
        get {
            return self.configuration.cellBackgroundColor
        }
        set(color) {
            self.configuration.cellBackgroundColor = color
        }
    }
    
    // The tint color of the arrow. Default is whiteColor()
    open var arrowTintColor: UIColor! {
        get {
            return self.menuArrow.tintColor
        }
        set(color) {
            self.menuArrow.tintColor = color
        }
    }
    
    open var cellSeparatorColor: UIColor! {
        get {
            return self.configuration.cellSeparatorColor
        }
        set(value) {
            self.configuration.cellSeparatorColor = value
        }
    }
    
    // The color of the text inside cell. Default is darkGrayColor()
    open var cellTextLabelColor: UIColor! {
        get {
            return self.configuration.cellTextLabelColor
        }
        set(value) {
            self.configuration.cellTextLabelColor = value
        }
    }
    
    // The color of the text inside a selected cell. Default is darkGrayColor()
    open var selectedCellTextLabelColor: UIColor! {
        get {
            return self.configuration.selectedCellTextLabelColor
        }
        set(value) {
            self.configuration.selectedCellTextLabelColor = value
        }
    }
    
    // The color of the deetail text inside cell. Default is darkGrayColor()
    open var cellDetailTextLabelColor: UIColor! {
        get {
            return self.configuration.cellDetailTextLabelColor
        }
        set(value) {
            self.configuration.cellDetailTextLabelColor = value
        }
    }
    
    // The color of the detail text inside a selected cell. Default is darkGrayColor()
    open var selectedCellDetailTextLabelColor: UIColor! {
        get {
            return self.configuration.selectedCellDetailTextLabelColor
        }
        set(value) {
            self.configuration.selectedCellDetailTextLabelColor = value
        }
    }
    
    // The font of the text inside cell. Default is HelveticaNeue-Bold, size 17
    open var cellTextLabelFont: UIFont! {
        get {
            return self.configuration.cellTextLabelFont
        }
        set(value) {
            self.configuration.cellTextLabelFont = value
        }
    }
    
    // The font of the detail text inside cell. Default is HelveticaNeue-Bold, size 17
    open var cellDetailTextLabelFont: UIFont! {
        get {
            return self.configuration.cellDetailTextLabelFont
        }
        set(value) {
            self.configuration.cellDetailTextLabelFont = value
        }
    }
    
    // The font of the navigation bar title. Default is HelveticaNeue-Bold, size 17
    open var navigationBarTitleFont: UIFont! {
        get {
            return self.configuration.navigationBarTitleFont
        }
        set(value) {
            self.configuration.navigationBarTitleFont = value
            self.menuTitle.font = self.configuration.navigationBarTitleFont
        }
    }
    
    // The alignment of the text inside cell. Default is .Left
    open var cellTextLabelAlignment: NSTextAlignment! {
        get {
            return self.configuration.cellTextLabelAlignment
        }
        set(value) {
            self.configuration.cellTextLabelAlignment = value
        }
    }
    
    // The alignment of the detail text inside cell. Default is .Left
    open var cellDetailTextLabelAlignment: NSTextAlignment! {
        get {
            return self.configuration.cellDetailTextLabelAlignment
        }
        set(value) {
            self.configuration.cellDetailTextLabelAlignment = value
        }
    }
    
    // The color of the cell when the cell is selected. Default is lightGrayColor()
    open var cellSelectionColor: UIColor! {
        get {
            return self.configuration.cellSelectionColor
        }
        set(value) {
            self.configuration.cellSelectionColor = value
        }
    }
    
    // The checkmark icon of the cell
    open var checkMarkImage: UIImage! {
        get {
            return self.configuration.checkMarkImage
        }
        set(value) {
            self.configuration.checkMarkImage = value
        }
    }
    
    // The boolean value that decides if selected color of cell is visible when the menu is shown. Default is false
    open var shouldKeepSelectedCellColor: Bool! {
        get {
            return self.configuration.shouldKeepSelectedCellColor
        }
        set(value) {
            self.configuration.shouldKeepSelectedCellColor = value
        }
    }
    
    // The animation duration of showing/hiding menu. Default is 0.3
    open var animationDuration: TimeInterval! {
        get {
            return self.configuration.animationDuration
        }
        set(value) {
            self.configuration.animationDuration = value
        }
    }

    // The arrow next to navigation title
    open var arrowImage: UIImage! {
        get {
            return self.configuration.arrowImage
        }
        set(value) {
            self.configuration.arrowImage = value.withRenderingMode(.alwaysTemplate)
            self.menuArrow.image = self.configuration.arrowImage
        }
    }
    
    // The padding between navigation title and arrow
    open var arrowPadding: CGFloat! {
        get {
            return self.configuration.arrowPadding
        }
        set(value) {
            self.configuration.arrowPadding = value
        }
    }
    
    // The color of the mask layer. Default is blackColor()
    open var maskBackgroundColor: UIColor! {
        get {
            return self.configuration.maskBackgroundColor
        }
        set(value) {
            self.configuration.maskBackgroundColor = value
        }
    }
    
    // The opacity of the mask layer. Default is 0.3
    open var maskBackgroundOpacity: CGFloat! {
        get {
            return self.configuration.maskBackgroundOpacity
        }
        set(value) {
            self.configuration.maskBackgroundOpacity = value
        }
    }
    
    // The boolean value that decides if you want to change the title text when a cell is selected. Default is true
    open var shouldChangeTitleText: Bool! {
        get {
            return self.configuration.shouldChangeTitleText
        }
        set(value) {
            self.configuration.shouldChangeTitleText = value
        }
    }
    
    open var didSelectItemAtIndexHandler: ((_ indexPath: Int) -> ())?
    open var isShown: Bool!

    fileprivate weak var navigationController: UINavigationController?
    fileprivate var configuration = GHConfiguration()
    fileprivate var topSeparator: UIView!
    fileprivate var menuButton: UIButton!
    fileprivate var menuTitle: UILabel!
    fileprivate var menuArrow: UIImageView!
    fileprivate var backgroundView: UIView!
    fileprivate var tableView: GHTableView!
    fileprivate var items: [GHDropdownItem]!
    fileprivate var menuWrapper: UIView!
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public init(navigationController: UINavigationController? = nil, containerView: UIView = UIApplication.shared.keyWindow!, selected: GHDropdownItem, items: [GHDropdownItem]) {
        // Key window
        guard let window = UIApplication.shared.keyWindow else {
            super.init(frame: CGRect.zero)
            return
        }
        
        // Navigation controller
        if let navigationController = navigationController {
            self.navigationController = navigationController
        } else {
            self.navigationController = window.rootViewController?.topMostViewController?.navigationController
        }
        
        // Get titleSize
        let titleSize = (selected.title as NSString).size(withAttributes: [NSAttributedStringKey.font:self.configuration.navigationBarTitleFont])
        
        // Set frame
        let frame = CGRect(x: 0, y: 0, width: titleSize.width + (self.configuration.arrowPadding + self.configuration.arrowImage.size.width)*2, height: self.navigationController!.navigationBar.frame.height)
        
        super.init(frame:frame)
        
        self.isShown = false
        self.items = items
        
        // Init button as navigation title
        self.menuButton = UIButton(frame: frame)
        self.menuButton.addTarget(self, action: #selector(GHNavigationDropdownMenu.menuButtonTapped(_:)), for: UIControlEvents.touchUpInside)
        self.addSubview(self.menuButton)

        self.menuTitle = UILabel(frame: frame)
        self.menuTitle.text = selected.title
        self.menuTitle.textColor = self.menuTitleColor
        self.menuTitle.font = self.configuration.navigationBarTitleFont
        self.menuTitle.textAlignment = self.configuration.cellTextLabelAlignment
        self.menuButton.addSubview(self.menuTitle)
        
        self.menuArrow = UIImageView(image: self.configuration.arrowImage.withRenderingMode(.alwaysTemplate))
        self.menuButton.addSubview(self.menuArrow)
        
        let menuWrapperBounds = window.bounds
        
        // Set up DropdownMenu
        self.menuWrapper = UIView(frame: CGRect(x: menuWrapperBounds.origin.x, y: 0, width: menuWrapperBounds.width, height: menuWrapperBounds.height))
        self.menuWrapper.clipsToBounds = true
        self.menuWrapper.autoresizingMask = [ .flexibleWidth, .flexibleHeight ]
        
        // Init background view (under table view)
        self.backgroundView = UIView(frame: menuWrapperBounds)
        self.backgroundView.backgroundColor = self.configuration.maskBackgroundColor
        self.backgroundView.autoresizingMask = [ .flexibleWidth, .flexibleHeight ]
        
        let backgroundTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(GHNavigationDropdownMenu.hideMenu));
        self.backgroundView.addGestureRecognizer(backgroundTapRecognizer)
        
        // Init properties
        self.setupDefaultConfiguration()
        
        // Init table view
        let navBarHeight = self.navigationController?.navigationBar.bounds.size.height ?? 0
        let statusBarHeight = UIApplication.shared.statusBarFrame.height 
        self.tableView = GHTableView(frame: CGRect(x: (menuWrapperBounds.width - 220)/2, y: menuWrapperBounds.origin.y + 0.5, width: 220, height: menuWrapperBounds.height + 300 - navBarHeight - statusBarHeight), items: items, selected: selected, configuration: self.configuration)
        
        self.tableView.selectRowAtIndexPathHandler = { [weak self] (indexPath: Int) -> () in
            guard let selfie = self else {
                return
            }
            selfie.didSelectItemAtIndexHandler!(indexPath)
            if selfie.shouldChangeTitleText! {
                selfie.setMenuTitle("\(selfie.tableView.items[indexPath].title)")
            }
            self?.hideMenu()
            self?.layoutSubviews()
        }
        
        // Add background view & table view to container view
        self.menuWrapper.addSubview(self.backgroundView)
        self.menuWrapper.addSubview(self.tableView)
        
        // Add Line on top
        self.topSeparator = UIView(frame: CGRect(x: (menuWrapperBounds.width - 220)/2, y: 0, width: 220, height: 0.5))
        self.topSeparator.autoresizingMask = UIViewAutoresizing.flexibleWidth
        self.menuWrapper.addSubview(self.topSeparator)
        
        // Add Menu View to container view
        containerView.addSubview(self.menuWrapper)
        
        // By default, hide menu view
        self.menuWrapper.isHidden = true        
    }
    
    override open func layoutSubviews() {
        self.menuTitle.sizeToFit()
        self.menuTitle.center = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        self.menuTitle.textColor = self.configuration.menuTitleColor
        self.menuArrow.sizeToFit()
        self.menuArrow.center = CGPoint(x: self.menuTitle.frame.maxX + self.configuration.arrowPadding, y: self.frame.size.height/2)
        self.menuWrapper.frame.origin.y = self.navigationController!.navigationBar.frame.maxY
        self.tableView.reloadData()
    }
    
    open func show() {
        if self.isShown == false {
            self.showMenu()
        }
    }
    
    open func hide() {
        if self.isShown == true {
            self.hideMenu()
        }
    }

    open func toggle() {
        if(self.isShown == true) {
            self.hideMenu();
        } else {
            self.showMenu();
        }
    }
    
    open func updateItems(_ items: [GHDropdownItem]) {
        if !items.isEmpty {
            self.tableView.items = items
            self.tableView.reloadData()
        }
    }
    
    func setupDefaultConfiguration() {
        self.menuTitleColor = self.navigationController?.navigationBar.titleTextAttributes?[NSAttributedStringKey.foregroundColor] as? UIColor
        self.cellBackgroundColor = self.navigationController?.navigationBar.barTintColor
        self.cellSeparatorColor = self.navigationController?.navigationBar.titleTextAttributes?[NSAttributedStringKey.foregroundColor] as? UIColor
        self.cellTextLabelColor = self.navigationController?.navigationBar.titleTextAttributes?[NSAttributedStringKey.foregroundColor] as? UIColor
        self.cellDetailTextLabelColor = self.navigationController?.navigationBar.titleTextAttributes?[NSAttributedStringKey.foregroundColor] as? UIColor
        
        self.arrowTintColor = self.configuration.arrowTintColor
    }
    
    func showMenu() {
        self.menuWrapper.frame.origin.y = self.navigationController!.navigationBar.frame.maxY
        
        self.isShown = true
        
        // Table view header
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: 220, height: 300))
        headerView.backgroundColor = self.configuration.cellBackgroundColor
        self.tableView.tableHeaderView = headerView
        
        self.topSeparator.backgroundColor = self.configuration.cellSeparatorColor
        
        // Rotate arrow
        self.rotateArrow()
        
        // Visible menu view
        self.menuWrapper.isHidden = false
        
        // Change background alpha
        self.backgroundView.alpha = 0
        
        // Animation
        self.tableView.frame.origin.y = -CGFloat(self.items.count) * self.configuration.cellHeight - 300
        
        // Reload data to dismiss highlight color of selected cell
        self.tableView.reloadData()
        
        self.menuWrapper.superview?.bringSubview(toFront: self.menuWrapper)
        
        UIView.animate(
            withDuration: self.configuration.animationDuration * 1.5,
            delay: 0,
            usingSpringWithDamping: 0.7,
            initialSpringVelocity: 0.5,
            options: [],
            animations: {
                self.tableView.frame.origin.y = CGFloat(-300)
                self.backgroundView.alpha = self.configuration.maskBackgroundOpacity
            }, completion: nil
        )
    }
    
    @objc func hideMenu() {
        // Rotate arrow
        self.rotateArrow()
        
        self.isShown = false
        
        // Change background alpha
        self.backgroundView.alpha = self.configuration.maskBackgroundOpacity
        
        UIView.animate(
            withDuration: self.configuration.animationDuration * 1.5,
            delay: 0,
            usingSpringWithDamping: 0.7,
            initialSpringVelocity: 0.5,
            options: [],
            animations: {
                self.tableView.frame.origin.y = CGFloat(-200)
            }, completion: nil
        )
        
        // Animation
        UIView.animate(
            withDuration: self.configuration.animationDuration,
            delay: 0,
            options: UIViewAnimationOptions(),
            animations: {
                self.tableView.frame.origin.y = -CGFloat(self.items.count) * self.configuration.cellHeight - 300
                self.backgroundView.alpha = 0
            }, completion: { _ in
                if self.isShown == false && self.tableView.frame.origin.y == -CGFloat(self.items.count) * self.configuration.cellHeight - 300 {
                    self.menuWrapper.isHidden = true
                }
        })
    }
    
    func rotateArrow() {
        UIView.animate(withDuration: self.configuration.animationDuration, animations: {[weak self] () -> () in
            if let selfie = self {
                selfie.menuArrow.transform = selfie.menuArrow.transform.rotated(by: 180 * CGFloat(Double.pi/180))
            }
            })
    }
    
    func setMenuTitle(_ title: String) {
        self.menuTitle.text = title
    }
    
    @objc func menuButtonTapped(_ sender: UIButton) {
        self.isShown == true ? hideMenu() : showMenu()
    }
}

// MARK: - Dropdown Item
public struct GHDropdownItem {
    public let title: String
    public let subtitle: String
    
    public init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }
}

extension GHDropdownItem: Equatable {}
// MARK: Equatable
public func ==(lhs: GHDropdownItem, rhs: GHDropdownItem) -> Bool {
    return lhs.title == rhs.title && lhs.subtitle == rhs.subtitle
}


// MARK: - Configuration
class GHConfiguration {
    var menuTitleColor: UIColor?
    var cellHeight: CGFloat!
    var cellBackgroundColor: UIColor?
    var cellSeparatorColor: UIColor?
    var cellTextLabelColor: UIColor?
    var selectedCellTextLabelColor: UIColor?
    var cellTextLabelFont: UIFont!
    var cellDetailTextLabelColor: UIColor?
    var selectedCellDetailTextLabelColor: UIColor?
    var cellDetailTextLabelFont: UIFont!
    var navigationBarTitleFont: UIFont!
    var cellTextLabelAlignment: NSTextAlignment!
    var cellDetailTextLabelAlignment: NSTextAlignment!
    var cellSelectionColor: UIColor?
    var checkMarkImage: UIImage!
    var shouldKeepSelectedCellColor: Bool!
    var arrowTintColor: UIColor?
    var arrowImage: UIImage!
    var arrowPadding: CGFloat!
    var animationDuration: TimeInterval!
    var maskBackgroundColor: UIColor!
    var maskBackgroundOpacity: CGFloat!
    var shouldChangeTitleText: Bool!
    
    init() {
        self.defaultValue()
    }
    
    func defaultValue() {
        // Path for image
        let bundle = Bundle(for: GHConfiguration.self)
        let url = bundle.url(forResource: "GHNavigationDropdownMenu", withExtension: "bundle")
        let imageBundle = Bundle(url: url!)
        let checkMarkImagePath = imageBundle?.path(forResource: "icon-check-green", ofType: "png")
        let arrowImagePath = imageBundle?.path(forResource: "arrow_down_icon", ofType: "png")

        // Default values
        self.menuTitleColor = UIColor.darkGray
        self.cellHeight = 50
        self.cellBackgroundColor = UIColor.white
        self.arrowTintColor = UIColor.white
        self.cellSeparatorColor = UIColor.darkGray
        self.cellTextLabelColor = UIColor.darkGray
        self.selectedCellTextLabelColor = UIColor.darkGray
        self.cellTextLabelFont = UIFont(name: "HelveticaNeue-Bold", size: 17)
        self.navigationBarTitleFont = UIFont(name: "HelveticaNeue-Bold", size: 17)
        self.cellTextLabelAlignment = NSTextAlignment.left
        self.cellDetailTextLabelAlignment = NSTextAlignment.left
        self.cellSelectionColor = UIColor.lightGray
        self.checkMarkImage = UIImage(contentsOfFile: checkMarkImagePath!)
        self.shouldKeepSelectedCellColor = false
        self.animationDuration = 0.5
        self.arrowImage = UIImage(contentsOfFile: arrowImagePath!)
        self.arrowPadding = 15
        self.maskBackgroundColor = UIColor.black
        self.maskBackgroundOpacity = 0.3
        self.shouldChangeTitleText = true
    }
}

// MARK: - Table View
class GHTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    // Public properties
    var configuration: GHConfiguration!
    var selectRowAtIndexPathHandler: ((_ indexPath: Int) -> ())?
    
    // Private properties
    fileprivate var items: [GHDropdownItem]!
    fileprivate var selectedIndexPath: Int?
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(frame: CGRect, items: [GHDropdownItem], selected: GHDropdownItem, configuration: GHConfiguration) {
        super.init(frame: frame, style: UITableViewStyle.plain)
        
        self.items = items
        self.selectedIndexPath = items.index(of: selected)
        self.configuration = configuration
        
        // Setup table view
        self.delegate = self
        self.dataSource = self
        self.backgroundColor = UIColor.clear
        self.separatorStyle = UITableViewCellSeparatorStyle.none
        //        self.separatorEffect = UIBlurEffect(style: .Light)
        self.autoresizingMask = UIViewAutoresizing.flexibleWidth
        self.tableFooterView = UIView(frame: CGRect.zero)
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        if let hitView = super.hitTest(point, with: event) , hitView.isKind(of: GHTableCellContentView.self) {
            return hitView
        }
        return nil;
    }
    
    // Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.configuration.cellHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = GHTableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell", configuration: self.configuration)
        let item = self.items[indexPath.row]
        cell.textLabel?.text = item.title
        if item.subtitle != "" {
            cell.detailTextLabel?.text = item.subtitle
            cell.detailTextLabel?.isHidden = false
        } else {
            cell.detailTextLabel?.isHidden = true
        }
        cell.checkmarkIcon.isHidden = (indexPath.row == selectedIndexPath) ? false : true
        return cell
    }
    
    // Table view delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndexPath = (indexPath as NSIndexPath).row
        self.selectRowAtIndexPathHandler!((indexPath as NSIndexPath).row)
        self.reloadData()
        let cell = tableView.cellForRow(at: indexPath) as? GHTableViewCell
        cell?.contentView.backgroundColor = self.configuration.cellSelectionColor
        cell?.textLabel?.textColor = self.configuration.selectedCellTextLabelColor
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? GHTableViewCell
        cell?.checkmarkIcon.isHidden = true
        cell?.contentView.backgroundColor = self.configuration.cellBackgroundColor
        cell?.textLabel?.textColor = self.configuration.cellTextLabelColor
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if self.configuration.shouldKeepSelectedCellColor == true {
            cell.backgroundColor = self.configuration.cellBackgroundColor
            cell.contentView.backgroundColor = ((indexPath as NSIndexPath).row == selectedIndexPath) ? self.configuration.cellSelectionColor : self.configuration.cellBackgroundColor
        }
    }
}

// MARK: - Table view cell
class GHTableViewCell: UITableViewCell {
    let checkmarkIconWidth: CGFloat = 29
    let horizontalMargin: CGFloat = 20
    
    var checkmarkIcon: UIImageView!
    var cellContentFrame: CGRect!
    var configuration: GHConfiguration!
    
    init(style: UITableViewCellStyle, reuseIdentifier: String?, configuration: GHConfiguration) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.configuration = configuration
        
        // Setup cell
        cellContentFrame = CGRect(x: 0, y: 0, width: 220.0, height: self.configuration.cellHeight)
        self.contentView.backgroundColor = self.configuration.cellBackgroundColor
        self.selectionStyle = UITableViewCellSelectionStyle.none
        
        let cellTopMargin: CGFloat = 5.0
        
        // Cell text label
        let textLabelHeight = self.configuration.cellTextLabelFont.lineHeight
        self.textLabel!.textColor = self.configuration.cellTextLabelColor
        self.textLabel!.font = self.configuration.cellTextLabelFont
        self.textLabel!.textAlignment = self.configuration.cellTextLabelAlignment
        if self.textLabel!.textAlignment == .center {
            self.textLabel!.frame = CGRect(x: 0, y: cellTopMargin, width: cellContentFrame.width, height: textLabelHeight)
        } else if self.textLabel!.textAlignment == .left {
            self.textLabel!.frame = CGRect(x: horizontalMargin, y: cellTopMargin, width: cellContentFrame.width, height: textLabelHeight)
        } else {
            self.textLabel!.frame = CGRect(x: -horizontalMargin, y: cellTopMargin, width: cellContentFrame.width, height: textLabelHeight)
        }
        
        // Cell detail text label
        let detailTextLabelHeight = self.configuration.cellDetailTextLabelFont.lineHeight
        self.detailTextLabel!.textColor = self.configuration.cellDetailTextLabelColor
        self.detailTextLabel!.font = self.configuration.cellDetailTextLabelFont
        self.detailTextLabel!.textAlignment = self.configuration.cellDetailTextLabelAlignment
        if self.detailTextLabel!.textAlignment == .center {
            self.detailTextLabel!.frame = CGRect(x: 0, y: cellTopMargin + textLabelHeight, width: cellContentFrame.width, height: detailTextLabelHeight)
        } else if self.detailTextLabel!.textAlignment == .left {
            self.detailTextLabel!.frame = CGRect(x: horizontalMargin, y: cellTopMargin + textLabelHeight, width: cellContentFrame.width, height: detailTextLabelHeight)
        } else {
            self.detailTextLabel!.frame = CGRect(x: -horizontalMargin, y: cellTopMargin + textLabelHeight, width: cellContentFrame.width, height: detailTextLabelHeight)
        }
        
        // Checkmark icon
        if self.textLabel!.textAlignment == .center {
            self.checkmarkIcon = UIImageView(frame: CGRect(x: cellContentFrame.width - checkmarkIconWidth, y: 10, width: 29, height: 11))
        } else if self.textLabel!.textAlignment == .left {
            self.checkmarkIcon = UIImageView(frame: CGRect(x: cellContentFrame.width - checkmarkIconWidth, y: 10, width: 29, height: 11))
        } else {
            self.checkmarkIcon = UIImageView(frame: CGRect(x: horizontalMargin, y: 10, width: 29, height: 11))
        }
        self.checkmarkIcon.isHidden = true
        self.checkmarkIcon.image = self.configuration.checkMarkImage
        self.checkmarkIcon.contentMode = UIViewContentMode.scaleAspectFill
        self.contentView.addSubview(self.checkmarkIcon)
        
        // Separator for cell
        let separator = GHTableCellContentView(frame: cellContentFrame)
        if let cellSeparatorColor = self.configuration.cellSeparatorColor {
            separator.separatorColor = cellSeparatorColor
        }
        self.contentView.addSubview(separator)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        self.bounds = cellContentFrame
        self.contentView.frame = self.bounds
    }
}

// MARK: - Content view of table view cell
class GHTableCellContentView: UIView {
    var separatorColor: UIColor = UIColor.black
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.initialize()
    }
    
    func initialize() {
        self.backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let context = UIGraphicsGetCurrentContext()
        
        // Set separator color of dropdown menu based on barStyle
        context?.setStrokeColor(self.separatorColor.cgColor)
        context?.setLineWidth(1)
        context?.move(to: CGPoint(x: 0, y: self.bounds.size.height))
        context?.addLine(to: CGPoint(x: self.bounds.size.width, y: self.bounds.size.height))
        context?.strokePath()
    }
}

// MARK: - UIViewControler extension
extension UIViewController {
    // Get ViewController in top present level
    var topPresentedViewController: UIViewController? {
        var target: UIViewController? = self
        while (target?.presentedViewController != nil) {
            target = target?.presentedViewController
        }
        return target
    }
    
    // Get top VisibleViewController from ViewController stack in same present level.
    // It should be visibleViewController if self is a UINavigationController instance
    // It should be selectedViewController if self is a UITabBarController instance
    var topVisibleViewController: UIViewController? {
        if let navigation = self as? UINavigationController {
            if let visibleViewController = navigation.visibleViewController {
                return visibleViewController.topVisibleViewController
            }
        }
        if let tab = self as? UITabBarController {
            if let selectedViewController = tab.selectedViewController {
                return selectedViewController.topVisibleViewController
            }
        }
        return self
    }
    
    // Combine both topPresentedViewController and topVisibleViewController methods, to get top visible viewcontroller in top present level
    var topMostViewController: UIViewController? {
        return self.topPresentedViewController?.topVisibleViewController
    }
}
