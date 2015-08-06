//
//  startViewController.swift
//  swiftTest
//
//  Created by pactera on 8/6/15.
//  Copyright (c) 2015 pactera. All rights reserved.
//

import UIKit

class startViewController: UIViewController {

    var tabbarController: UITabBarController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.

        self.view.backgroundColor = UIColor.whiteColor()
        
        
        
        UITabBar.appearance().tintColor = UIColor(red: 0.91, green: 0.68, blue: 0.15, alpha: 1.0)
        
       // var attributesForNormal = [NSForegroundColorAttributeName: ]
        
        //UITabBarItem.appearance().setTitleTextAttributes(, forState: UIControlStateNormal)
        
        tabbarController = UITabBarController()
        tabbarController!.view.frame = CGRect(x: 0, y: 0, width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height)
        self.view.addSubview(tabbarController!.view)
    
        fillTabbarContent()
        
    }
    
    func fillTabbarContent(){
        
        let tabbarController0 = attendanceViewController()
        tabbarController0.tabBarItem = makeTabbarItem("考勤", image: UIImage(named: "tab1")!, selectImage: UIImage(named: "tab1_hl")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal), tagCount: 0)
        tabbarController0.title = "考勤"
        let navgationController0 = UINavigationController(rootViewController: tabbarController0)
        //navgationController0.navigationItem.title = "考勤"
        
        let tabbarController1 = askForLeaveViewController()
        tabbarController1.tabBarItem = makeTabbarItem("请假", image: UIImage(named: "tab2")!, selectImage: UIImage(named: "tab2_hl")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal), tagCount: 0)
        tabbarController1.title = "请假"
        let navgationController1 = UINavigationController(rootViewController: tabbarController1)
        //navgationController1.title = "请假"
        
        let tabbarController2 = punchCardViewController()
        tabbarController2.tabBarItem = makeTabbarItem("打卡", image: UIImage(named: "tab3")!, selectImage: UIImage(named: "tab3_hl")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal), tagCount: 0)
        tabbarController2.title = "打卡"
        let navgationController2 = UINavigationController(rootViewController: tabbarController2)
        //navgationController2.title = "打卡"
        
        tabbarController?.viewControllers = [navgationController0, navgationController1, navgationController2]
        
    }
    
    func makeTabbarItem(title: String, image: UIImage, selectImage: UIImage, tagCount: NSInteger)->UITabBarItem
    {
        var customTabbarItem = UITabBarItem(title: title, image: image, selectedImage: selectImage)
        return customTabbarItem
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
