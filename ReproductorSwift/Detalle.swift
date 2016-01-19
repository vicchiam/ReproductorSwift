//
//  Detalle.swift
//  ReproductorSwift
//
//  Created by Victor Chisvert Amat on 18/1/16.
//  Copyright © 2016 Victor Chisvert Amat. All rights reserved.
//

import UIKit
import AVFoundation

class Detalle: UIViewController {
    
    var cancion: Cancion!
    
    @IBOutlet weak var lblTitulo: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    var reproductor: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        lblTitulo.text = cancion.nombre
        
        image.image = UIImage(imageLiteral: cancion.imagen)
        
        let sonidoURL = NSBundle.mainBundle().URLForResource(cancion.sonido, withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOfURL: sonidoURL!)
            reproductor.volume = 1
            reproductor.play()
        }
        catch {
            print("Error al cargar el archivo de sonido")
        }
        
    }
    
    @IBAction func play() {
        if !reproductor.playing{
            reproductor.play()
        }
    }
    
    @IBAction func pause() {
        if reproductor.playing{
            reproductor.pause()
        }
    }
    
    @IBAction func stop() {
        if reproductor.playing{
            reproductor.stop()
            reproductor.currentTime = 0
        }
        
    }    
    
    @IBAction func volumen(sender: UISlider) {
        let value = sender.value
        reproductor.volume=value
        print(value)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
