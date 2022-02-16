//
//  ViewController.swift
//  CustomCellTableView
//
//  Created by 김재훈 on 2022/02/16.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var countries = ["Brazil", "Canada", "Germany", "Korea", "Japan", "USA", "China", "Brazil", "Canada", "Germany", "Korea", "Japan", "USA", "China"]
    var imgName = ["smile1", "smile2", "smile3", "smile1", "smile2", "smile3", "smile1", "smile1", "smile2", "smile3", "smile1", "smile2", "smile3", "smile1"]
    
    @IBOutlet var countryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countryTableView.delegate = self
        countryTableView.dataSource = self
        
        countryTableView.separatorStyle = .none
        countryTableView.showsVerticalScrollIndicator = false
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.countryTableView.dequeueReusableCell(withIdentifier: "countryCell") as! CountryTableViewCell
        let country = countries[indexPath.row]
        let image = imgName[indexPath.row]
        
        cell.countryLbl.text = country
        cell.countryImgView.image = UIImage(named: image)
        
        cell.countryView.layer.cornerRadius = cell.countryView.frame.height / 2
        cell.countryImgView.layer.cornerRadius = cell.countryImgView.frame.height / 2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}

