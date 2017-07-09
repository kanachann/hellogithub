//
//  MemoViewController.swift
//  MemoPad
//
//  Created by 遠藤佳奈 on 2017/01/15.
//  Copyright © 2017年 遠藤佳奈. All rights reserved.
//

import UIKit

class MemoViewController4: UIViewController,UITextFieldDelegate {
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var contentTextView: UITextView!
    
    var saveData4 :  UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.text = saveData4.object(forKey: "title4") as! String?
        contentTextView.text = saveData4.object(forKey: "content4") as! String?
        titleTextField.delegate = self
    }
    
    @IBAction func saveMemo() {
        
        saveData4.set(titleTextField.text, forKey: "title4")
        saveData4.set(contentTextView.text,forKey: "content4")
        saveData4.synchronize()
        
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

