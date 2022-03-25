//
//  PageViewController.swift
//  pageview
//
//  Created by 김경환 on 2022/03/25.
//

import UIKit

class PageViewController: UIPageViewController {
    private var pageViewAdapter: PageViewAdapter!
    
    public static let FIRST_INDEX = 0
    public static let SECOND_INDEX = 1
    public static let THIRD_INDEX = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageViewAdapter = PageViewAdapter()
        
        initPageAdapter()
    }
    
    private func initPageAdapter() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        pageViewAdapter.addItem(item: storyBoard.instantiateViewController(withIdentifier: "FirstViewController"))
        pageViewAdapter.addItem(item: storyBoard.instantiateViewController(withIdentifier: "SecondViewController"))
        pageViewAdapter.addItem(item: storyBoard.instantiateViewController(withIdentifier: "ThirdViewController"))
        
        setViewControllers(index: 0)
    }
    
    public func setViewControllers(index: Int) {
        self.setViewControllers([pageViewAdapter.getItem(index: index)], direction: .forward, animated: false, completion: nil)
    }
}
