//
//  ViewController.swift
//  pageview
//
//  Created by 김경환 on 2022/03/25.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet var firstView: UIView!
    @IBOutlet var lbFirst: UILabel!
    @IBOutlet var firstEnableView: UIView!
    
    @IBOutlet var secondView: UIView!
    @IBOutlet var lbSecond: UILabel!
    @IBOutlet var secondEnableView: UIView!
    
    @IBOutlet var thirdView: UIView!
    @IBOutlet var lbThrid: UILabel!
    @IBOutlet var thirdEnableView: UIView!
    
    private var pageViewController: PageViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initAction()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let pageViewController = segue.destination as? PageViewController {
            self.pageViewController = pageViewController
        }
        
        super.prepare(for: segue, sender: sender)
    }
    
    private func initAction() {
        firstView.addAction {
            self.setButtonStateChange(view: self.firstView)
            self.pageViewController?.setViewControllers(index: PageViewController.FIRST_INDEX)
        }
        
        secondView.addAction {
            self.setButtonStateChange(view: self.secondView)
            self.pageViewController?.setViewControllers(index: PageViewController.SECOND_INDEX)
        }
        
        thirdView.addAction {
            self.setButtonStateChange(view: self.thirdView)
            self.pageViewController?.setViewControllers(index: PageViewController.THIRD_INDEX)
        }
    }
    
    private func setButtonStateChange(view: UIView) {
        lbFirst.textColor = #colorLiteral(red: 0.9019607306, green: 0.9019607306, blue: 0.9019607306, alpha: 1)
        lbSecond.textColor = #colorLiteral(red: 0.9019607306, green: 0.9019607306, blue: 0.9019607306, alpha: 1)
        lbThrid.textColor = #colorLiteral(red: 0.9019607306, green: 0.9019607306, blue: 0.9019607306, alpha: 1)
        
        firstEnableView.isHidden = true
        secondEnableView.isHidden = true
        thirdEnableView.isHidden = true
        
        switch view {
        case firstView:
            lbFirst.textColor = #colorLiteral(red: 0.2000000179, green: 0.2000000179, blue: 0.2000000179, alpha: 1)
            firstEnableView.isHidden = false
            break
            
        case secondView:
            lbSecond.textColor = #colorLiteral(red: 0.2000000179, green: 0.2000000179, blue: 0.2000000179, alpha: 1)
            secondEnableView.isHidden = false
            break
            
        case thirdView:
            lbThrid.textColor = #colorLiteral(red: 0.2000000179, green: 0.2000000179, blue: 0.2000000179, alpha: 1)
            thirdEnableView.isHidden = false
            break
            
        default:
            break
        }
    }
}

