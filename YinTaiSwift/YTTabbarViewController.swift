//
//  YTTabbarViewController.swift
//  YinTaiSwift
//
//  Created by yangyue on 16/4/19.
//  Copyright © 2016年 com.yy.www. All rights reserved.
//

import UIKit


class YTTabbarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.yellowColor()
        // Do any additional setup after loading the view.
        
        //        self .creatSubViewControllers()
        let home =   YTHomePageVC()
        let onSale = YTOnSaleViewController()
        let category = YTCategoryViewController()
        let cart = YTCartViewController()
        let mine = YTMineViewController()
        
        var vcArr = [home,onSale,category,cart,mine];
        var imgArr = ["首页.png","特卖.png","分类.png","new购物车.png","我的银泰.png"];
        var imgSelectArr = ["选中首页.png","选中特卖.png","选中分类.png","选中购物车.png","选中我的银泰.png"];
        var titleArr = ["首页","特卖","分类","购物车","我的银泰"];
        
        var vcCollection = NSArray() as? [UIViewController];
        for var index = 0; index < vcArr.count; ++index  {
            let title = titleArr[index]
            let vc = vcArr[index]
            
            let item =  UITabBarItem()
            item.image = UIImage.init(named: imgArr[index])?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            item.selectedImage = UIImage.init(named: imgSelectArr[index])?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            item.title = title
            
            vc.tabBarItem = item
            
            vc.title = title
            
            vcCollection?.append(vc)
        }
        self.viewControllers = vcCollection
        
        
        self.tabBar.selectedImageTintColor = RGBA(255.0, g: 81.0, b: 141.0, a: 1.0)
    }
    
    func RGBA (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat)->UIColor {
        return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
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
