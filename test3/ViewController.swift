//
//  ViewController.swift
//  test3
//
//  Created by 小西夏穂 on 2018/02/19.
//  Copyright © 2018年 小西夏穂. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton()
    
        var count = 0
    
    @objc var Stamp1: UIButton!
    
    @objc func pushStamp(sender:UIButton){
        print("Hello!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
  
        button.frame = CGRect(x: 20, y: 6, width: 50, height: 50)
        // ボタンの設置座標とサイズを設定する.
        
        button.backgroundColor = UIColor.clear
        // buttonのbackgroundcolorを指定
        
        button.setTitle("Hello", for: .normal)
        // 通常時のbuttonの文字を指定
        
        button.addTarget(self, action: #selector(pushStamp(sender: )), for: .touchUpInside)
        // buttonにイベントを追加
        
//        //labelの設定
//        let label: UILabel = UILabel(frame: CGRect(x:0, y:0, width:self.view.frame.width, height:self.view.frame.height))
//        label.text = "Hello!"
//        //labelはUILabelのインスタンスとする
//        //label.numberOfLines = 0;
//        label.sizeToFit()
        
        //UIScrollViewのインスタンス作成
        var scrollView = UIScrollView()
        
        //scrollViewの大きさを設定。
        scrollView = UIScrollView(frame: CGRect(x:0, y:600, width: 375, height: 100))
        
        //スクロール領域の設定
        scrollView.contentSize = CGSize(width:self.view.frame.width * 4, height:100)
        
        // 実際にviewに表示する
        scrollView.addSubview(button)
        
        
//        //labelをscrollViewのSubViewとして追加
//        scrollView.addSubview(label)
        
        scrollView.backgroundColor = UIColor.gray
        
        //scrollViewをviewのSubViewとして追加
        self.view.addSubview(scrollView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

