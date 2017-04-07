//
//  ViewController.swift
//  Universal LInk Sample
//
//  Created by anhltv on 3/26/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    internal class ImageItem {
        var title:String?
        var img:String?
        init(title:String, img:String) {
            self.img = img
            self.title = title
            
        }
    }
    

    private var imageItemList = [ImageItem(title: "iOS Programming", img: "ios_icon"), ImageItem(title: "android Programming", img: "android_icon")]
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.imageItemList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableCell", for: indexPath) as! DetailTableCell
        let img = imageItemList[indexPath.row].img
        let title = imageItemList[indexPath.row].title
        cell.setViewDetail(title: title!, img: img!)
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! DetailViewController
        let selectedItem = imageItemList[(self.tableView.indexPathForSelectedRow?.row)!]
        detailViewController.formTitle = selectedItem.title
        detailViewController.formImg = selectedItem.img
        
        
    }
}

