// Playground - noun: a place where people can play

import UIKit


import UIKit

let konicaErrorCodes = [
    "C2001": "Tray 2 abnormality",
    "C1001":"Tray 3 jamming",
    "C3001": "Tray 4 jammed",
    "E04-01": "Check fuser thermal fuse and thermister",
    "C2000": "3rd tray lift motor failure"]

let kyoceraDictionary = [
    "1000": "Check ADF",
    "2000": "Check Fuser unit",
    "3000": "Check 2nd tray"]


let konicaModels = ["C220","C280","C360","C452","C552","C652","C224","C284","C364"]
let errorCodes = ["C1001", "C2001", "C3001"]

let kyoceraModels = ["TA3500", "TA4500", "TA6500"]
let kyoceraErrorCodes = ["2000", "1000", "3000"]

let kyocera = "Kyocera"
let konica = "Konica Minolta"
let panasonic = "Panasonic"


var make =  "konica minolta"
var make1 = "kyocera"
var make2 = "panasonic"

var model = "c220"
var model1 = "ta4500"


var code = "c2001"
var code1 = "3000"

func searcCodes() -> String{
    
    let lowerKonicaErrorCodes = errorCodes.map {$0.lowercaseString}
    let lowerKyoceraErrorCodes = kyoceraErrorCodes.map {$0.lowercaseString}
    let lowerKonicaModel = konicaModels.map {$0.lowercaseString}
    let lowerKyoceraModel = kyoceraModels.map {$0.lowercaseString}
    var c = ""
        
    if make == konica.lowercaseString{
        for(var i = 0; i < lowerKonicaModel.count; i++){
            if model == lowerKonicaModel[i]{
                for(var j = 0; j < lowerKonicaErrorCodes.count; j++){
                    println(lowerKonicaErrorCodes[j])
                    if code == lowerKonicaErrorCodes[j]{
                        var cd = lowerKonicaErrorCodes[j].capitalizedString
                       return "\(konicaErrorCodes[cd]!)"
                    }
                }
            }
        }
    }
    else if(make1 == kyocera.lowercaseString){
        for(var k = 0; k < lowerKyoceraModel.count; k++){
            if model1 == lowerKyoceraModel[k]{
                for(var l = 0; l < lowerKyoceraErrorCodes.count; l++){
                    if code1 == lowerKyoceraErrorCodes[l]{
                        return "\(kyoceraDictionary[lowerKyoceraErrorCodes[l]]!)"
                    }
            
                }
        
            }
        
        }
        
    }
    return ""
}

var results = searcCodes()

results










