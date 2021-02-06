import UIKit
import AudioToolbox

extension UIDevice {
    static func vibrate() {
        AudioServicesPlaySystemSound(1519)
    }
}

/*
For iPhone vibration there is a special kind of sound, handled by the AudioToolbox framework.
Logically vibration is more of a device function (it doesn’t come from the speakers but from the device itself) than playing sounds. This extensions allows to simplify it to one line

usage: 
UIDevice.vibrate()
*/