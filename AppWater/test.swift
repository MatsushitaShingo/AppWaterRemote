//
//  test.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/04/23.
//

import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!

    var animateMoveUpFlug: Bool = false

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        moveAnimation()
    }
    
    func moveAnimation() {
        var animator: UIViewPropertyAnimator
        if animateMoveUpFlug {
            animator = UIViewPropertyAnimator(duration: 1.0, curve: .linear, animations: {
                       self.myView.center.y -= 200
                   })
        } else {
            animator = UIViewPropertyAnimator(duration: 1.0, curve: .linear, animations: {
                self.myView.center.y += 200
            })
        }
        animator.startAnimation()
        //完了時に再帰呼び出しを行う
        animator.addCompletion{_ in
            self.animateMoveUpFlug.toggle()
            self.moveAnimation()
        }
    }
}
struct test: View {
    var body: some View {
        VStack{
            Text("hello")

        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
