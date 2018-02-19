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
    
    //画像を加工するための元となる画像
    var originalImage: UIImage!
    
    var Filter: CIFilter!
    
    @objc func changeFilter(sender:Any){
        print("Hello!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button.frame = CGRect(x: 10, y: 5, width: 50, height: 50)
        // ボタンの設置座標とサイズを設定する.
        
        
        button.backgroundColor = UIColor.cyan
        // buttonのbackgroundcolorを指定
        
        
        button.setTitle("Hello!", for: .normal)
        // 通常時のbuttonの文字を指定
        
        
        button.addTarget(self, action: #selector(changeFilter(sender: )), for: .touchUpInside)
        // buttonにイベントを追加
        
        
    
        
        
    
        //labelの設定
        let label: UILabel = UILabel(frame: CGRect(x:0, y:0, width:self.view.frame.width, height:self.view.frame.height))
        label.text = "Hello!"
        //labelはUILabelのインスタンスとする
        //label.numberOfLines = 0;
        label.sizeToFit()
        
        let label2: UILabel = UILabel(frame: CGRect(x:70, y:0, width:self.view.frame.width, height:self.view.frame.height))
        label2.text = "GoodNight!"
        //labelはUILabelのインスタンスとする
        //label.numberOfLines = 0;
        label2.sizeToFit()
        
        let label3: UILabel = UILabel(frame: CGRect(x:200, y:0, width:self.view.frame.width, height:self.view.frame.height))
        label3.text = "こんにちは！"
        //labelはUILabelのインスタンスとする
        //label.numberOfLines = 0;
        label3.sizeToFit()
        
        let label4: UILabel = UILabel(frame: CGRect(x:350, y:0, width:self.view.frame.width, height:self.view.frame.height))
        label4.text = "おやすみ"
        //labelはUILabelのインスタンスとする
        //label.numberOfLines = 0;
        label4.sizeToFit()
        
        //UIScrollViewのインスタンス作成
        var scrollView = UIScrollView()
        
        //scrollViewの大きさを設定。
        scrollView = UIScrollView(frame: CGRect(x:0, y:600, width: 375, height: 80))
        
        //スクロール領域の設定
        scrollView.contentSize = CGSize(width:self.view.frame.width * 4, height:self.view.frame.height)
        
        scrollView.addSubview(button)
        // 実際にviewに表示する
        
        //labelをscrollViewのSubViewとして追加
        scrollView.addSubview(label)
        
        scrollView.addSubview(label2)
        
        scrollView.addSubview(label3)
        
        scrollView.addSubview(label4)
        
        scrollView.backgroundColor = UIColor.gray
        
        //scrollViewをviewのSubViewとして追加
        self.view.addSubview(scrollView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

