//
//  ViewController.swift
//  DevBootcampHackathon
//
//  Created by Lucas Farah on 1/23/16.
//  Copyright © 2016 Lucas Farah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

var arrCat = ["Senior","Homeless","Children","Animals"]
var arrCatNum = ["109","230","59","90"]

  @IBOutlet weak var table: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

  extension ViewController: UITableViewDataSource
{
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  {
    return arrCat.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  {
    var cell = tableView.dequeueReusableCellWithIdentifier("cell") as! TableViewCell!
    if !(cell != nil)
    {
      cell = TableViewCell(style:.Default, reuseIdentifier: "cell")
    }
    
    let imgvName = arrCat[indexPath.row] + ".jpg"
    
    // setup cell without force unwrapping it
    cell.lblName.text = arrCat[indexPath.row]
    cell.lblNumber.text = arrCatNum[indexPath.row]
    cell.imgvCat.image = UIImage(named: imgvName)
    
    return cell
  }
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
  {
   print(indexPath.row)
    self.performSegueWithIdentifier("selected", sender: self)
  }
}

