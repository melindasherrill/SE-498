//
//  LoginVC.swift
//  MedQuiz
//
//  Created by Omar Sherief on 11/13/17.
//  Copyright © 2017 Omar Sherief. All rights reserved.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {

    var MainStoryBoard:UIStoryboard? = nil
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //Reference to the Quiz's storyboard
        MainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        present((MainStoryBoard?.instantiateInitialViewController())!, animated: false, completion: nil)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField.tag == 1){
            scrollView.setContentOffset(CGPoint(x: 0, y: 100), animated: true)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField.tag == 0){
            passwordTextField.becomeFirstResponder()
        }
        else{
            textField.resignFirstResponder()
        }
        return true
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
