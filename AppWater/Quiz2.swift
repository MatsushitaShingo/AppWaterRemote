//
//  Quiz2.swift
//  AppWater
//
//  Created by 田中翔大 on 2022/04/01.
//

import SwiftUI

struct ModalView2: View {
    @Environment(\.presentationMode)var PresentationMode
    var body: some View {
        NavigationView{
            NavigationLink(destination: Quiz2()){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.red)
                    Text("START!")
                        .padding(.vertical)
                        .foregroundColor(.white)
                        .navigationBarItems(trailing:Button(action:{self.PresentationMode.wrappedValue.dismiss()
                        })
                                            {
                            Text("close")
                        })
                    
                                            
                }

          }.navigationViewStyle(.stack)

        
      }
    }
}


struct Quiz: Decodable {
    let question: String
    let answer: String
    var choice: [String]
}

class QuizesManager: ObservableObject {
    var quiz = [Quiz]()
    @Published var presentQuiz = Quiz(question: "", answer: "",choice: ["","","",""])
    @Published var isFinished = false// クイズが終わったかどうか
    var number = 0 //問題番号.今何問目なのか示す
    var correct = 0// 正解数
    
    func prepareQuestion() {
        presentQuiz = quiz[number]
        
        for i in 0 ..< presentQuiz.choice.count {
            let r = Int(arc4random_uniform(UInt32(presentQuiz.choice.count)))
            presentQuiz.choice.swapAt(i, r)
        }
    }
    
    func judge(answeredNumber: Int) {
        if presentQuiz.answer == presentQuiz.choice[answeredNumber]  {
            correct += 1
        }
        
        number += 1
        
        if number >= quiz.count {
            isFinished.toggle()
        } else {
            prepareQuestion()
        }
    }
}

struct Quiz2: View {
    @ObservedObject var quiz = QuizesManager()
    
    var body: some View {
        VStack {
            Text("No.\(quiz.number + 1)/\(quiz.quiz.count)")
                .foregroundColor(Color.gray)
            Spacer()
            Text(quiz.presentQuiz.question).font(.title)
            Spacer()
            ForEach( 0..<3) { i in
                Button(action: {
                    quiz.judge(answeredNumber: i)
                }){
                    HStack {
                        Text("   \(i + 1).")
                            .foregroundColor(Color.gray)
                            .frame(width: 50, height: 50)
                        Text(quiz.presentQuiz.choice[i])
                            .frame(width: UIScreen.main.bounds.width - 60, height: 50, alignment: .leading)
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 10, height: 50)
                .disabled(quiz.isFinished)
                .cornerRadius(25)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.blue))
                .padding(2)
            }
            Spacer()
        }.onAppear(perform: {
            loadQuiz()
            quiz.prepareQuestion()
        })
        .sheet(isPresented: $quiz.isFinished) {
            ResultView(numberOfQuestion: quiz.number, correct: quiz.correct)
        }
    }
    
    func loadQuiz() {
        quiz.quiz = load("QuizAnswer.json")
    }
}

struct ResultView: View {
    var numberOfQuestion: Int
    var correct: Int
    
    var body: some View {
        Text("問題数: \(numberOfQuestion)")
        Text("正解数: \(correct)")
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
struct Quiz2_Previews: PreviewProvider {
    static var previews: some View {
        Quiz2()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
