//
//  TVC.swift
//  ReproductorSwift
//
//  Created by Victor Chisvert Amat on 18/1/16.
//  Copyright © 2016 Victor Chisvert Amat. All rights reserved.
//

import UIKit

class TVC: UITableViewController {
    
    var canciones: Array<Cancion> = Array<Cancion>()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.title = "ReproductorSwift"
        
        canciones.append(Cancion(nombre: "Albeniz",imagen: "albeniz.jpg",sonido: "albeniz"))
        canciones.append(Cancion(nombre: "Albioni",imagen: "abinoni.jpg",sonido: "albioni"))
        canciones.append(Cancion(nombre: "Bach",imagen: "bach.jpg",sonido: "bach"))
        canciones.append(Cancion(nombre: "Beethoven",imagen: "beethoven.jpg",sonido: "beethoven"))
        canciones.append(Cancion(nombre: "Erik Satie",imagen: "eriksatie.jpg",sonido: "satie_gnossienne_3"))
        canciones.append(Cancion(nombre: "Monteverdi",imagen: "monteverdi.jpg",sonido: "montverdi"))
        canciones.append(Cancion(nombre: "Mozart",imagen: "mozart.jpg",sonido: "mozart"))
        canciones.append(Cancion(nombre: "Schubert",imagen: "schubert.jpg",sonido: "schubert"))
        canciones.append(Cancion(nombre: "Tchaikovsky",imagen: "tchaikovsky.jpg",sonido: "tchaikovsky"))
        canciones.append(Cancion(nombre: "Vivaldi Spring",imagen: "vivaldi.jpg",sonido: "vivaldi_spring"))
        canciones.append(Cancion(nombre: "Vivaldi Summer",imagen: "vivaldi.jpg",sonido: "vivaldi_summer"))
        canciones.append(Cancion(nombre: "Vivaldi Autumn",imagen: "vivaldi.jpg",sonido: "vivaldi_autumn"))
        canciones.append(Cancion(nombre: "Vivaldi Winter",imagen: "vivaldi.jpg",sonido: "vivaldi_winter"))
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return canciones.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        let cancion: Cancion = self.canciones[indexPath.row]
        cell.textLabel?.text = cancion.nombre
        
        //let img = NSBundle.mainBundle().URLForResource(cancion.imagen, withExtension: "jpg")
        /*let image : UIImage = UIImage(imageLiteral: cancion.imagen)
        cell.imageView?.autoresizingMask = UIViewAutoresizing.None
        cell.imageView?.autoresizesSubviews = false
        cell.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        cell.imageView?.bounds = CGRectMake(0, 0, 10, 10)
        cell.imageView?.frame = CGRectMake(0, 0, 10, 10)
        cell.imageView?.image = image*/
        
        
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let detalle = segue.destinationViewController as? Detalle {
           detalle.cancion = self.canciones[(self.tableView.indexPathForSelectedRow?.row)!]
        }
        
    }
    

}
