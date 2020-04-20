//
//  TempComponentViewController.swift
//  assignment3
//
//  Created by Dylan Shaw on 2020-03-02.
//  Copyright © 2020 Dylan Shaw. All rights reserved.
//

import UIKit

class TempComponentViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tempSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonPress(_ sender: UIButton) {
        
        if (textField.text!) == ""{
            let controller = UIAlertController(title: "Result:", message: "No Input", preferredStyle: .actionSheet);
            
            let noAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil);
            controller.addAction(noAction);

            if let ppc = controller.popoverPresentationController {
                ppc.sourceView = sender;
                ppc.sourceRect = sender.bounds;
            }
            present(controller, animated: true, completion: nil);
        }
        

     else {
    let usrInput = Float(textField.text!);

        
            if (tempSwitch.isOn == true) {
                let result = (usrInput! * 5/9) + 32;
                let msg = "The conversion is \(result)"

                let controller = UIAlertController(title: "Result:", message: msg, preferredStyle: .actionSheet);
                        
                        let noAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil);
                        controller.addAction(noAction);

                        if let ppc = controller.popoverPresentationController {
                            ppc.sourceView = sender;
                            ppc.sourceRect = sender.bounds;
                        }
                        present(controller, animated: true, completion: nil);
            }
            
            if (tempSwitch.isOn == false) {
                let result = (usrInput! - 32)*5/9;
                let msg = "The conversion is \(result)"

                let controller = UIAlertController(title: "Result:", message: msg, preferredStyle: .actionSheet);
                        
                        let noAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil);
                        controller.addAction(noAction);

                        if let ppc = controller.popoverPresentationController {
                            ppc.sourceView = sender;
                            ppc.sourceRect = sender.bounds;
                        }
                        present(controller, animated: true, completion: nil);
            }
        }
    }
    
    @IBAction func textFieldDoneEditing(sender: UITextField){
        sender.resignFirstResponder();
    }
    
    @IBAction func onTapGestureREconized(_ sender: Any) {
        textField.resignFirstResponder();
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



