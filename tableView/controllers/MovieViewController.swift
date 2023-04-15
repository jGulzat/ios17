//
//  MovieViewController.swift
//  tableView
//
//  Created by Gulzat on 15/4/23.
//

import UIKit

class MovieViewController: UIViewController {

    private let cellId = "cell"
    private var movieList: [Movie] = []
    
    @IBOutlet weak var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
        initData()
    }
    
    private func initUI(){
        movieTableView.dataSource = self
        movieTableView.delegate = self
        movieTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    private func initData(){
        movieList = [Movie(image: "ic_movie1", name: "Movie 1", description: "Movie 1 description"),
                     Movie(image: "ic_movie2", name: "Movie 2", description: "Movie 1 description"),
                     Movie(image: "ic_movie3", name: "Movie 3", description: "Movie 1 description"),
                     Movie(image: "ic_movie1", name: "Movie 4", description: "Movie 1 description"),
                     Movie(image: "ic_movie2", name: "Movie 1", description: "Movie 1 description"),
                     Movie(image: "ic_movie3", name: "Movie 1", description: "Movie 1 description"),
                     Movie(image: "ic_movie1", name: "Movie 1", description: "Movie 1 description"),
                     Movie(image: "ic_movie1", name: "Movie 1", description: "Movie 1 description")
        
        ]
    }
}

extension MovieViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell1 = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
//        cell.textLabel?.text = "cell \(indexPath.row)"
//        cell.imageView?.image = UIImage(systemName: "person")
//        cell.detailTextLabel?.text = "it is detail label"
//        cell.accessoryType = .detailButton
//        return cell1
        
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell2.textLabel?.text = movieList[indexPath.row].name
        cell2.imageView?.image = UIImage(named: movieList[indexPath.row].image )
        return cell2
    }
}

extension MovieViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        300
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("download this movie")
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
    //    self.present(vc, animated: true)
        vc.movie = movieList[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

struct Movie {
    var image: String
    var name: String
    var description: String
}

