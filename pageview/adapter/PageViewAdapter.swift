//
//  PageViewAdapter.swift
//  pageview
//
//  Created by 김경환 on 2022/03/25.
//

import UIKit

class PageViewAdapter {
    public var items = [UIViewController]()
    
    public func initItems(items: [UIViewController]) {
        self.items.removeAll()
        
        for item in items {
            self.items.append(item)
        }
    }
    
    public func addItems(items: [UIViewController]) {
        for item in items {
            self.items.append(item)
        }
    }
    
    public func addItem(item: UIViewController) {
        self.items.append(item)
    }
    
    public func getItemCount() -> Int {
        return items.count
    }
    
    public func getItem(index: Int) -> UIViewController {
        return items[index]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = items.firstIndex(of: viewController) else { return nil }
        
        let previousIndex = viewControllerIndex - 1
        
        if previousIndex < 0 {
            return items.last
        } else {
            return items[previousIndex]
        }
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = items.firstIndex(of: viewController) else { return nil }
        let nextIndex = viewControllerIndex + 1
        
        if nextIndex >= items.count {
            return items.first
        } else {
            return items[nextIndex]
        }
    }
}
