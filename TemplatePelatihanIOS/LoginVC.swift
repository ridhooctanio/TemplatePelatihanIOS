//
//  LoginVC.swift
//  TemplatePelatihanIOS
//
//  Created by MBP2017 i7 on 16/01/22.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var emailFld: UITextField!
    @IBOutlet weak var passwordFld: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var registerBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupMethod()
        setupView()
    }
    
    func setupMethod() {
        loginBtn.addTarget(self, action: #selector(login), for: .touchUpInside)
        registerBtn.addTarget(self, action: #selector(register), for: .touchUpInside)
    }
    
    func setupView() { }
    
    @objc func login() {
        let email = emailFld.text ?? ""
        let password = passwordFld.text ?? ""
        
        if email.isEmpty || password.isEmpty {
            let alert = UIAlertController(title: "Unnes 2022", message: "Silakan lengkapi form.", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @objc func register() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RegisterVC")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
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
