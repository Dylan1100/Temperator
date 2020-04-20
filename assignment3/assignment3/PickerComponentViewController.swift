//
//  PickerComponentViewController.swift
//  assignment3
//
//  Created by Dylan Shaw on 2020-03-02.
//  Copyright © 2020 Dylan Shaw. All rights reserved.
//

import UIKit

class PickerComponentViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let inputDate = dateFormatter.string(from: datePicker.date)

        
        let msg = inputDate
        
        let controller = UIAlertController(title: "Current Date:", message: msg, preferredStyle: .actionSheet);
        
        let noAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil);
        controller.addAction(noAction);

        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender;
            ppc.sourceRect = sender.bounds;
        }
        present(controller, animated: true, completion: nil);
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
