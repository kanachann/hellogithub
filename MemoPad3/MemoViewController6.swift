//
//  MemoViewController.swift
//  MemoPad
//
//  Created by 遠藤佳奈 on 2017/01/15.
//  Copyright © 2017年 遠藤佳奈. All rights reserved.
//

import UIKit

class MemoViewController6: UIViewController,UITextFieldDelegate {
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var contentTextView: UITextView!
    
    var saveData6 :  UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.text = saveData6.object(forKey: "title6") as! String?
        contentTextView.text = saveData6.object(forKey: "content6") as! String?
        titleTextField.delegate = self
    }
    
    @IBAction func saveMemo() {
        
        saveData6.set(titleTextField.text, forKey: "title6")
        saveData6.set(contentTextView.text,forKey: "content6")
        saveData6.synchronize()
        
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
