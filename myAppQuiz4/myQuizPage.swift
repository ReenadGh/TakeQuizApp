//
//  myQuizPage.swift
//  myAppQuiz4
//
//  Created by Reenad gh on 28/04/1443 AH.
//

import UIKit

class myQuizPage: UIViewController {
    let quiz = Quiz()

    @IBOutlet weak var RightButtom: UIButton!
    @IBOutlet weak var LeftButton: UIButton!
    @IBOutlet weak var qusetion: UILabel!
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func AnswerButtonClicked(_ sender: UIButton) {
        if quiz.currentQuestion >= 0 {
            answer.text = Quiz.quizBank[quiz.currentQuestion].1

        }
        
    }
    @IBAction func leftButtonClicked(_ sender: UIButton) {
        if quiz.currentQuestion > 0 {
            answer.text = ""
        qusetion.text = Quiz.quizBank[quiz.currentQuestion].0
       
            quiz.currentQuestion = quiz.currentQuestion - 1
        }
    }
    
    @IBAction func rightButtonClicked(_ sender: UIButton) {
        answer.text = ""
    qusetion.text = Quiz.quizBank[quiz.currentQuestion].0
        
        if  quiz.currentQuestion < Quiz.quizBank.count-1  {

        quiz.currentQuestion = quiz.currentQuestion + 1
    }}

    
    
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        qusetion.text = Quiz.quizBank[quiz.currentQuestion].0

        RightButtom.setImage(UIImage(named: "right.png"), for: .normal)
        LeftButton
            .setImage(UIImage(named: "left.png"), for: .normal)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
