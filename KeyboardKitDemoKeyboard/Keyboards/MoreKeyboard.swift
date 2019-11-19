//
//  MoreKeyboard.swift
//  KeyboardKitDemoKeyboard
//
//  Created by Li Xi on 19/11/2019.
//

import KeyboardKit

/**
 
 This demo keyboard has 24 buttons per page, which fits this
 demo app's two different grid sizes for portrait/landscape.
 It features one page of real emoji characters and four with
 image buttons, which are handled by the demo action handler.
 
 If you make any changes to this keyboard (which you should,
 play with it) the keyboard may get an uneven set of buttons,
 which the grid engine handles by adding empty dummy buttons
 at the very end.
 
 */
struct MoreKeyboard: DemoKeyboard {
    
    init(in viewController: KeyboardViewController) {
        self.bottomActions = MoreKeyboard.bottomActions(
            leftmost: MoreKeyboard.switchAction,
            for: viewController)
    }
    
    let actions: [KeyboardAction] = [
        .character("\\"),
        .character("∧"),
        .character("∘"),
        .character("⇒"),
        .character("ℏ"),
        .character("∴"),
        .character("∵"),
        .character("∶"),
        .character("⊂"),
        .character("⊃"),
        .character("⊄"),
        .character("⊅"),
        .character("⊆"),
        .character("⊇"),
        .character("⊈"),
        .character("⊉"),
        .character("⊊"),
        .character("⊋"),
        .character("∈"),
        .character("∉"),
        .character("∋"),
        .character("∌"),
        .character("⁰"),
        .character("¹"),
        .character("²"),
        .character("³"),
        .character("⁴"),
        .character("⁵"),
        .character("⁶"),
        .character("⁷"),
        .character("⁸"),
        .character("⁹"),
        .character("₀"),
        .character("₁"),
        .character("₂"),
        .character("₃"),
        .character("₄"),
        .character("₅"),
        .character("₆"),
        .character("₇"),
        .character("₈"),
        .character("₉"),
        .character("𝔸"),
        .character("𝔹"),
        .character("ℂ"),
        .character("𝔻"),
        .character("𝔼"),
        .character("𝔽"),
        .character("𝔾"),
        .character("ℍ"),
        .character("𝕀"),
        .character("𝕁"),
        .character("𝕂"),
        .character("𝕃"),
        .character("𝕄"),
        .character("ℕ"),
        .character("𝕆"),
        .character("ℙ"),
        .character("ℚ"),
        .character("ℝ"),
        .character("𝕊"),
        .character("𝕋"),
        .character("𝕌"),
        .character("𝕍"),
        .character("𝕎"),
        .character("𝕏"),
        .character("𝕐"),
        .character("ℤ"),
        .character("𝒜"),
        .character("ℬ"),
        .character("𝒞"),
        .character("𝒟"),
        .character("ℰ"),
        .character("ℱ"),
        .character("𝒢"),
        .character("ℋ"),
        .character("ℐ"),
        .character("𝒥"),
        .character("𝒦"),
        .character("ℒ"),
        .character("ℳ"),
        .character("𝒩"),
        .character("𝒪"),
        .character("𝒫"),
        .character("𝒬"),
        .character("ℛ"),
        .character("𝒮"),
        .character("𝒯"),
        .character("𝒰"),
        .character("𝒱"),
        .character("𝒲"),
        .character("𝒳"),
        .character("𝒴"),
        .character("𝒵"),
        .character("𝒶"),
        .character("𝒷"),
        .character("𝒸"),
        .character("𝒹"),
        .character("ℯ"),
        .character("𝒻"),
        .character("ℊ"),
        .character("𝒽"),
        .character("𝒾"),
        .character("𝒿"),
        .character("𝓀"),
        .character("𝓁"),
        .character("𝓂"),
        .character("𝓃"),
        .character("ℴ"),
        .character("𝓅"),
        .character("𝓆"),
        .character("𝓇"),
        .character("𝓈"),
        .character("𝓉"),
        .character("𝓊"),
        .character("𝓋"),
        .character("𝓌"),
        .character("𝓍"),
        .character("𝓎"),
        .character("𝓏")
    ]
    
    let bottomActions: KeyboardActionRow
}

private extension MoreKeyboard {
    
    static var switchAction: KeyboardAction {
        return .switchToKeyboard(.alphabetic(uppercased: false))
    }
}

