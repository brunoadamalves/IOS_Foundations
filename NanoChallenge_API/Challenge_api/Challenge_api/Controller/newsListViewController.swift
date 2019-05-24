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
    
    private var headlinesItems = [Articles]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsTableView.delegate = self
        newsTableView.dataSource = self
        
        //Refatorar para ler de um arquivo de configuração
        getJsonData(endpoint: "https://newsapi.org/v2/top-headlines?country=br&apiKey=c43772649cac4f4d936c628aced03b71")
    }
    
    func getJsonData(endpoint: String)
    {
        let url = URL(string: endpoint)
        
        guard let downloadUrl = url else { return }
        URLSession.shared.dataTask(with: downloadUrl) {data, URLResponse, error in
            print("downloaded")
            do {
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode(newsHeadlines.self, from: data!)
                print(responseModel.articles![0].content!)
                self.headlinesItems = responseModel.articles!
                print(self.headlinesItems[0].title!)
                DispatchQueue.main.async {
                    self.newsTableView.reloadData()
                }
            } catch {
                print("Something wrong after downloaded")
            }
        }.resume()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? newsDetailViewController{
            var temp = self.headlinesItems[(self.newsTableView.indexPathForSelectedRow?.row)!]
            destination.article = temp
        }
    }
}

extension newsListViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.headlinesItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = self.headlinesItems[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell") as! newsListCellController

        cell.setItem(newsItem: item)

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let temp = headlinesItems[indexPath.row]

        self.performSegue(withIdentifier: "showDetail", sender: temp)
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Brazil news headlines"
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
        label.backgroundColor = #colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)

        return label
    }
    
    

}
