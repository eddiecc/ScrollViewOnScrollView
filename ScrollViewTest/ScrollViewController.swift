//
//  ScrollViewController.swift
//  ScrollViewTest
//
//  Created by Eisuke Sato on 2016/02/17.
//  Copyright © 2016年 Eisuke Sato. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        let upView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
//        let centerView = UIView(frame: CGRect(x: 0, y: self.view.frame.height, width: self.view.frame.width, height: self.view.frame.height))
//        let downView = UIView(frame: CGRect(x: 0, y: self.view.frame.height * 2, width: self.view.frame.width, height: self.view.frame.height))
//        
//        upView.backgroundColor = UIColor.redColor()
//        centerView.backgroundColor = UIColor.greenColor()
//        downView.backgroundColor = UIColor.blueColor()
//        
//        print(upView.frame)
//        
//        scrollView.addSubview(upView)
//        scrollView.addSubview(centerView)
//        scrollView.addSubview(downView)
        
//        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height * 3)
//        scrollView.contentOffset = CGPoint(x: 0, y: self.view.frame.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
