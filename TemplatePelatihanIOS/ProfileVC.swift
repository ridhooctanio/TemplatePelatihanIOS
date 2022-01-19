//
//  ProfileVC.swift
//  TemplatePelatihanIOS
//
//  Created by MBP2017 i7 on 18/01/22.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nameFld: UITextField!
    @IBOutlet weak var emailFld: UITextField!
    @IBOutlet weak var bioText: UITextView!
    @IBOutlet weak var updateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupMethod()
    }

    func setupMethod() {
        backBtn.addTarget(self, action: #selector(back), for: .touchUpInside)
    }
    
    @objc func back() {
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
