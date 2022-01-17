//
//  RegisterVC.swift
//  TemplatePelatihanIOS
//
//  Created by MBP2017 i7 on 16/01/22.
//

import UIKit

class RegisterVC: UIViewController {
    
    @IBOutlet weak var nameFld: UITextField!
    @IBOutlet weak var emailFld: UITextField!
    @IBOutlet weak var passwordFld: UITextField!
    @IBOutlet weak var repasswordFld: UITextField!
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    
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
    
    func setupView() {
        
    }
    
    @objc func register() {
        let name = nameFld.text ?? ""
        let email = emailFld.text ?? ""
        let password = passwordFld.text ?? ""
        let rePassword = repasswordFld.text ?? ""
        
        if name.isEmpty || email.isEmpty || password.isEmpty || rePassword.isEmpty {
            let alert = UIAlertController(title: "Unnes 2022", message: "Silakan lengkapi form.", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @objc func login() {
        self.dismiss(animated: true, completion: nil)
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
