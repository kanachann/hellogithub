//
//  MemoViewController.swift
//  MemoPad
//
//  Created by 遠藤佳奈 on 2017/01/15.
//  Copyright © 2017年 遠藤佳奈. All rights reserved.
//

import UIKit

class MemoViewController3: UIViewController,UITextFieldDelegate {
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var contentTextView: UITextView!
    
    var saveData3 :  UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.text = saveData3.object(forKey: "title3") as! String?
        contentTextView.text = saveData3.object(forKey: "content3") as! String?
        titleTextField.delegate = self
    }
    
    @IBAction func saveMemo() {
        
        saveData3.set(titleTextField.text, forKey: "title3")
        saveData3.set(contentTextView.text,forKey: "content3")
        saveData3.synchronize()
        
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
