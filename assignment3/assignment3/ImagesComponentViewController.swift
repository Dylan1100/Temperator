//
//  ImagesComponentViewController.swift
//  assignment3
//
//  Created by Dylan Shaw on 2020-03-02.
//  Copyright © 2020 Dylan Shaw. All rights reserved.
//

import UIKit

class ImagesComponentViewController: UIViewController {
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch3: UISwitch!
    @IBOutlet weak var switch4: UISwitch!
    @IBOutlet weak var switch5: UISwitch!
    @IBOutlet weak var switch6: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func slider1Toggle(_ sender: UISwitch) {
        if (sender.isOn == true){
            image1.isHidden = false;
        } else if (sender.isOn == false){
            image1.isHidden = true;
        }
    }
    
    @IBAction func slider2Toggle(_ sender: UISwitch) {
        if (sender.isOn == true){
            image2.isHidden = false;
        } else if (sender.isOn == false){
            image2.isHidden = true;
        }
    }
    
    @IBAction func slider3Toggle(_ sender: UISwitch) {
        if (sender.isOn == true){
            image3.isHidden = false;
        } else if (sender.isOn == false){
            image3.isHidden = true;
        }
    }
    
    
    @IBAction func slider4Toggle(_ sender: UISwitch) {
        if (sender.isOn == true){
            image4.isHidden = false;
        } else if (sender.isOn == false){
            image4.isHidden = true;
        }
    }
    
    
    @IBAction func slider5Toggle(_ sender: UISwitch) {
        if (sender.isOn == true){
            image5.isHidden = false;
        } else if (sender.isOn == false){
            image5.isHidden = true;
        }
    }
    
    @IBAction func slider6Toggle(_ sender: UISwitch) {
        if (sender.isOn == true){
            image6.isHidden = false;
        } else if (sender.isOn == false){
            image6.isHidden = true;
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

}
