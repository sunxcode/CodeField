//
//  ViewController.swift
//  DeleTextField
//
//  Created by mini on 2018/5/24.
//  Copyright © 2018年 miniYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, YMCodeViewDelegate {
    
    var codeView: YMCodeView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        codeView = YMCodeView.init(count: 6, with: 30.0)
        view.addSubview(codeView)
        codeView.delegate = self
        codeView.frame = CGRect.init(x: 20, y: 100, width: view.frame.width - 40, height: 31)
        
    }
    
    func codeView(_ inputString: String) {
        print(inputString)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        codeView.registFirst()
    }


}

