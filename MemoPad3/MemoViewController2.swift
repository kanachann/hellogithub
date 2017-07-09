//
//  MemoViewController.swift
//  MemoPad
//
//  Created by 遠藤佳奈 on 2017/01/15.
//  Copyright © 2017年 遠藤佳奈. All rights reserved.
//

import UIKit

class MemoViewController2: UIViewController,UITextFieldDelegate {
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var contentTextView: UITextView!
    
    var saveData2 :  UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.text = saveData2.object(forKey: "title2") as! String?
        contentTextView.text = saveData2.object(forKey: "content2") as! String?
        titleTextField.delegate = self
    }
    
    @IBAction func saveMemo() {
        
        saveData2.set(titleTextField.text, forKey: "title2")
        saveData2.set(contentTextView.text,forKey: "content2")
        saveData2.synchronize()
        
        let alert: UIAlertController = UIAlertController(title: "保存", message: "メモの保存が完了しました。", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok!", style: .default , handler: { action in
            self.navigationController?.popViewController(animated: true)
        })
            
            
            
        )
        present(alert, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
