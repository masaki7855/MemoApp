//
//  ListViewController.swift
//  Memo
//
//  Created by 細渕雅貴 on 2021/04/30.
//

import UIKit

class ListViewController: UITableViewController {
    
   
    
    let saves = UserDefaults.standard
    
    var memoNo = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = saves.string(forKey: "mytext" + String(indexPath.row))
        return cell
    }
    //セルタップ時
    override func  tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.memoNo = String(indexPath.row)
        performSegue(withIdentifier: "toDetail",sender: nil)
            }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toDetail") {
            let ViewController = segue.destination as! ViewController
            ViewController.memoNo = self.memoNo
    }
    }
        override func viewWillAppear(_ animated: Bool){
            super.viewDidDisappear(animated)
            tableView.reloadData()
        }

}
