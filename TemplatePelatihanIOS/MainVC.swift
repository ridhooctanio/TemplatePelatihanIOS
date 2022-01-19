//
//  MainVC.swift
//  TemplatePelatihanIOS
//
//  Created by MBP2017 i7 on 17/01/22.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var profileBtn: UIButton!
    @IBOutlet weak var addBtn: UIButton!
    
    var datas = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupMethod()
        getData()
    }
    
    func setupMethod() {
        tableView.delegate = self
        tableView.dataSource = self
        profileBtn.addTarget(self, action: #selector(profile), for: .touchUpInside)
        addBtn.addTarget(self, action: #selector(add), for: .touchUpInside)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainCell
        cell.titleLbl.text = datas[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func saveData(name: String) {
        datas.append(name)
        UserDefaults.standard.set(datas, forKey: "dataPeserta")
        UserDefaults.standard.synchronize()
        tableView.reloadData()
    }
    
    func getData() {
        datas = UserDefaults.standard.stringArray(forKey: "dataPeserta") ?? []
        tableView.reloadData()
    }
    
    @objc func profile() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ProfileVC")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func add() {
        let alert = UIAlertController(title: "Unnes 2022", message: "Tambahkan Data Peserta", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Masukkan nama peserta pelatihan"
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let confirm = UIAlertAction(title: "Confirm", style: .default) { (action) in
            let textField = alert.textFields![0]
            let name = textField.text ?? ""
            
            if !name.isEmpty {
                self.saveData(name: name)
            }
        }
        alert.addAction(cancel)
        alert.addAction(confirm)
        self.present(alert, animated: true, completion: nil)
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
