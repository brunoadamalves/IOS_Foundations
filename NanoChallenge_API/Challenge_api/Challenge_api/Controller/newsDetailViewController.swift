//
//  newsDetailViewController.swift
//  Challenge_api
//
//  Created by Bruno Adam Alves on 24/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class newsDetailViewController: UIViewController {
    var article: Articles?

    @IBOutlet weak var titleHeadline: UILabel!
    @IBOutlet weak var imageHeadline: UIImageView!
    @IBOutlet weak var timestamp: UILabel!
    @IBOutlet weak var resumo: UILabel!
    @IBOutlet weak var conteudo: UILabel!
    @IBAction func linkAction(_ sender: Any) {
        let link: String = article!.url ?? ""
        if link != "" {
            if let url = URL(string: link){
                UIApplication.shared.open(url)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleHeadline.text = self.article!.title
        imageHeadline.dowloadFromServer(link: article!.urlToImage!, contentMode: .scaleToFill)
        timestamp.text = self.article!.publishedAt
        resumo.text = self.article!.description
        conteudo.text = self.article!.content
        
        // Do any additional setup after loading the view.
    }
    
    
}
