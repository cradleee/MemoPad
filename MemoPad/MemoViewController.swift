//
//  MemoViewController.swift
//  MemoPad
//
//  Created by kamano yurika on 2018/02/10.
//  Copyright © 2018年 釜野由里佳. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController {
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var contentTextView: UITextView!
    
    var saveDate: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextField.text = saveDate.object(forKey: "title") as? String
        contentTextView.text = saveDate.object(forKey: "content") as? String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
    @IBAction func saveMemo() {
        saveDate.set(titleTextField.text, forKey: "title")
        saveDate.set(contentTextView.text, forKey: "content")
        
        let alert: UIAlertController = UIAlertController(title: "保存", message: "メモの保存が完了しました。",
                                                         preferredStle: .alert)
        
        alert.addAction(
            UIAlertAction)(
                title: "OK"
                style: .default,
                handler: {action in
                    print("OKボタンが押されました！")
            }
        )
      ）
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
