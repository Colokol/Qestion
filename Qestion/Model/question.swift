
import Foundation

struct Question {
    let quest:String
    let answer:[String]
    let correctAnswer:String
    init(q: String, a: [String], correctAnswer:String) {
        self.quest = q
        self.answer = a
        self.correctAnswer = correctAnswer
    }

}
