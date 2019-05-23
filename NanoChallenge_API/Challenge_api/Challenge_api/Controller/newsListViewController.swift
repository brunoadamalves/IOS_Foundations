//
//  newsListViewController.swift
//  Challenge_api
//
//  Created by Bruno Adam Alves on 23/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class newsListViewController: UIViewController {

    @IBOutlet weak var newsTableView: UITableView!
    
    var newsItems: [[newsItem]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newsItems = createTempArrayData()
        
        newsTableView.delegate = self
        newsTableView.dataSource = self
        
        getJsonData()
        
    }
    
    func createTempArrayData() -> [[newsItem]] {
        var tempItems : [[newsItem]] = [[]]
        
        tempItems = [
            [
                newsItem(title: "News Brasi 1", newsCover: "img2"),
                newsItem(title: "News Brasil 2", newsCover: "img2")
            ],
            [
                newsItem(title: "News EUA 1", newsCover: "img2"),
                newsItem(title: "News EUA 2", newsCover: "img2")
            ],
            [
                newsItem(title: "News MX 1", newsCover: "img2"),
                newsItem(title: "News MX 2", newsCover: "img2")
            ]
        ]
        
        return tempItems
    }
    
    func getJsonData()
    {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=br&apiKey=c43772649cac4f4d936c628aced03b71")
        
        guard let downloadUrl = url else { return }
        URLSession.shared.dataTask(with: downloadUrl) {data, URLResponse, error in
            print("downloaded")
            do {
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode(Json4Swift_Base.self, from: data!)
                print(responseModel)
            } catch {
                print("Something wrong after downloaded")
            }
        }.resume()
    }
}

extension newsListViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsItems[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return newsItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = newsItems[indexPath.section][indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell") as! newsListCellController
        
        cell.setItem(newsItem: item)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 94
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "NEWS [COUNTRY]"
//        label.font = UIFont(name: "SF Pro Display Light", size: 12)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
        label.backgroundColor = #colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)
        
        
        return label
    }
    
}
