//
//  ViewController.swift
//  ScrollViewTest
//
//  Created by Eisuke Sato on 2016/02/17.
//  Copyright © 2016年 Eisuke Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var scrollViewControllerA: ScrollViewController!
    var scrollViewControllerB: ScrollViewController!
    var scrollViewControllerC: ScrollViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scrollViewControllerA = storyboard?.instantiateViewControllerWithIdentifier("ScrollViewController") as! ScrollViewController
        scrollViewControllerB = storyboard?.instantiateViewControllerWithIdentifier("ScrollViewController") as! ScrollViewController
        scrollViewControllerC = storyboard?.instantiateViewControllerWithIdentifier("ScrollViewController") as! ScrollViewController
        
        self.addChildViewController(scrollViewControllerA)
        self.addChildViewController(scrollViewControllerB)
        self.addChildViewController(scrollViewControllerC)
        
        scrollView.addSubview(scrollViewControllerA.view)
        scrollView.addSubview(scrollViewControllerB.view)
        scrollView.addSubview(scrollViewControllerC.view)
        
        scrollViewControllerA.view.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: scrollView.bounds.size)
        scrollViewControllerB.view.frame = CGRect(origin: CGPoint(x: CGRectGetWidth(UIScreen.mainScreen().bounds), y: 0), size: scrollView.bounds.size)
        scrollViewControllerC.view.frame = CGRect(origin: CGPoint(x: CGRectGetWidth(UIScreen.mainScreen().bounds) * 2, y: 0), size: scrollView.bounds.size)
        
        
        
        print(scrollViewControllerB.scrollView.contentSize)
        
        
        scrollView.contentSize = CGSize(width: CGRectGetWidth(UIScreen.mainScreen().bounds) * 3, height: CGRectGetHeight(scrollView.frame))
        scrollView.contentOffset = CGPoint(x: CGRectGetWidth(UIScreen.mainScreen().bounds), y: 0)
    }
    
    override func viewDidLayoutSubviews() {
        scrollViewSetting(scrollViewControllerA.scrollView)
        scrollViewSetting(scrollViewControllerB.scrollView)
        scrollViewSetting(scrollViewControllerC.scrollView)
        
        scrollViewControllerA.didMoveToParentViewController(self)
        scrollViewControllerB.didMoveToParentViewController(self)
        scrollViewControllerC.didMoveToParentViewController(self)
    }
    
    func scrollViewSetting(scrollView: UIScrollView) {
        let upView = UIView(frame: CGRect(x: 0, y: 0, width: CGRectGetWidth(self.scrollView.bounds), height: CGRectGetHeight(self.scrollView.bounds)))
        let centerView = UIView(frame: CGRect(x: 0, y: CGRectGetHeight(self.scrollView.bounds), width: CGRectGetWidth(self.scrollView.bounds), height: CGRectGetHeight(self.scrollView.bounds)))
        let downView = UIView(frame: CGRect(x: 0, y: CGRectGetHeight(self.scrollView.bounds) * 2, width: CGRectGetWidth(self.scrollView.bounds), height: CGRectGetHeight(self.scrollView.bounds)))
        
        upView.backgroundColor = UIColor.redColor()
        centerView.backgroundColor = UIColor.greenColor()
        downView.backgroundColor = UIColor.blueColor()
        
        print(upView.frame)
        
        scrollView.addSubview(upView)
        scrollView.addSubview(centerView)
        scrollView.addSubview(downView)
        
        scrollView.contentSize = CGSize(width: self.scrollView.frame.width, height: self.scrollView.frame.height * 3)
        scrollView.contentOffset = CGPoint(x: 0, y: self.scrollView.frame.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        print(scrollViewControllerB.scrollView.contentSize)
        
    }


}

