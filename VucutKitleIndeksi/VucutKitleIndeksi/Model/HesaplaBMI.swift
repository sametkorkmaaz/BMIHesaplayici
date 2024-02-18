//
//  HesaplaBMI.swift
//  VucutKitleIndeksi
//
//  Created by Samet Korkmaz on 18.02.2024.
//

import Foundation
import UIKit

struct HesaplaBMI {  // HESAPLAMANIN YAPILDIĞI STRUCT
    
    var deger : BMI?
    // MUTATİNG FUNC ile BMI daki verilere değer atabiliyoruz
    mutating func hesapla(boy : Float, kilo: Float) {
        //BMI = kg/height^2(m)
        
        let bmi = kilo / (pow(boy, 2))
        
        if (bmi<18.5){
            deger = BMI(indeks: bmi, oneri: "Daha fazla yemelisin!", renk: UIColor.blue)
        }
        else if (18.5 < bmi && bmi < 24.9){
            deger = BMI(indeks: bmi, oneri: "Fitsin böyle devam et!", renk: UIColor.systemGreen)
        }else {
            deger = BMI(indeks: bmi, oneri: "Daha az yemelisin", renk: UIColor.red)
        }
        
    }
     // BMI a attığımız değerleri döndürüyoruz
    func getBMIValue() -> String{
        let bmi1basamak = String(format: "%.1f", deger?.indeks ?? "0.0")
        return bmi1basamak
    }
    
    func getOneri() -> String{
        return deger?.oneri ?? "error"
    }
    
    func getrenk() -> UIColor{
        return deger?.renk ?? UIColor.black
    }
    
}
