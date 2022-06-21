//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    //StoryBrain(構造体)をインスタンス化
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //upDateUIメソッドを呼ぶ
        updateUI()

    }
    
    //2つのボタンをリンク(タップした方のボタンの情報がsenderに入る)
    @IBAction func choiceMade(_ sender: Any) {
        
        //storyBrainのnextStoryメソッドを呼ぶ
        storyBrain.nextStory(userChoice: (sender as AnyObject).currentTitle!)
        //updateUIメソッドを呼ぶ
        updateUI()
    }
    //updateUIメソッド
    func updateUI() {
        //storyBrainのgetStoryTitleメソッドで取得した値をstoruLabelのテキストに反映
           storyLabel.text = storyBrain.getStoryTitle()
        //ボタンのタイトルをそれぞれ、storyBrainのgetChoice1メソッドで取得した値を反映
           choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
           choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
       }
    
}

