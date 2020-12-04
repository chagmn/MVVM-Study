//
//  View.swift
//  MVVM Study
//
//  Created by 창민 on 2020/12/01.
//

import UIKit

class PeopleCell: UITableViewCell{
    public var name: UILabel!
    public var age: UILabel!
    public var etc: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        name = UILabel()
        name.textAlignment = .center
        
        age = UILabel()
        age.textAlignment = .center
        
        etc = UILabel()
        etc.textAlignment = .center
        
        contentView.addSubview(name)
        contentView.addSubview(age)
        contentView.addSubview(etc)
        
        name.translatesAutoresizingMaskIntoConstraints = false
        name.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 100).isActive = true
        
        age.translatesAutoresizingMaskIntoConstraints = false
        age.leadingAnchor.constraint(equalTo: name.trailingAnchor, constant: 10).isActive = true
        
        etc.translatesAutoresizingMaskIntoConstraints = false
        etc.leadingAnchor.constraint(equalTo: age.trailingAnchor, constant: 10).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var mytableview: UITableView!
    let cellIdentifier: String = "cellpeople"
    let viewModel = ViewModel()
    var lista:[String] = ["1","2","3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("called viewDidLoad()")

        mytableview = UITableView()
        mytableview.delegate = self
        mytableview.dataSource = self
        view.addSubview(mytableview)
        mytableview.register(PeopleCell.classForCoder(), forCellReuseIdentifier: "cellpeople")
        
        mytableview.translatesAutoresizingMaskIntoConstraints = false
        mytableview.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mytableview.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mytableview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        mytableview.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {        return viewModel.peopleData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellpeople") as! PeopleCell
        let person = viewModel.peopleData[indexPath.row] as! Person
        print("called tableView(), \(person.name)")
        
        cell.name.text = person.name
        cell.age.text = "\(person.age)"
        cell.etc.text = "\(person.height) / \(person.weight)"

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30.0
    }

}
