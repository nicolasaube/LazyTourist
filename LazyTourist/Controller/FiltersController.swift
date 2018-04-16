//
//  FiltersController.swift
//  LazyTourist
//
//  Created by Nicolas Aubé on 26/03/2018.
//  Copyright © 2018 Nico aka Babou le barbar. All rights reserved.
//

import UIKit

class FiltersController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var helpView: UIView!
    @IBOutlet weak var btn_close: UIButton!
    @IBOutlet weak var btn_help: UIButton!
    @IBOutlet weak var btn_restaurant: UIButton!
    @IBOutlet weak var btn_cafe: UIButton!
    @IBOutlet weak var btn_bar: UIButton!
    
    private let opacity = Float(0.5)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn_restaurant.isSelected = false
        btn_restaurant.layer.opacity = opacity
        
        btn_cafe.isSelected = false
        btn_cafe.layer.opacity = opacity
        
        btn_bar.isSelected = false
        btn_bar.layer.opacity = opacity
        
        // Do any additional setup after loading the view.
    
    }

    @IBAction func button_pressed1(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected == false ){
            Singleton.shared.btn1=0
            print("non selectionne")
            sender.layer.opacity = 0.5
        }else if(sender.isSelected == true){
            Singleton.shared.btn1=1
            print("selectionne")
            sender.layer.opacity = 1.0
        }
    }
    
    @IBAction func button_pressed2(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected == false ){
            Singleton.shared.btn2=0
            print("non selectionne")
            sender.layer.opacity = 0.5
        }else if(sender.isSelected == true){
            Singleton.shared.btn2=1
            print("selectionne")
            sender.layer.opacity = 1.0
        }
    }
    
    @IBAction func button_pressed3(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected == false ){
            Singleton.shared.btn3=0
            print("non selectionne")
            sender.layer.opacity = 0.5
        }else if(sender.isSelected == true){
            Singleton.shared.btn3=1
            print("selectionne")
            sender.layer.opacity = 1.0
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func previousView(_ sender: UIButton) {
        self.dismiss(animated: true){
            
        }
    }
    
    @IBAction func helpPressed(_ sender: Any)
    {
        if(helpView.isHidden == true)
        {
            helpView.isHidden = false
            logo.isHidden = true
        }
        else
        {
            helpView.isHidden = true
            logo.isHidden = false
        }
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
