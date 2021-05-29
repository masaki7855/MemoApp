//
//  ViewController.swift
//  Memo
//
//  Created by 細渕雅貴 on 2021/04/29.
//

import UIKit

class ViewController: UIViewController {
    
    //メモNo
    var memoNo = ""
    
    let saves = UserDefaults.standard
    
    @IBOutlet weak var textDetail: UITextView!
    
    //保存ボタン
    @IBAction func saveButton(_ sender: Any) {
        saves.set(memo.text, forKey: "mytext" + memoNo)
    }
    
    //メモ内容
    @IBOutlet weak var memo: UITextView!
    

    override func viewDidLoad() {
        memo.text = saves.string(forKey: "mytext" + memoNo)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
}

