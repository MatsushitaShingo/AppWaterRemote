//
//  Quiz3.swift
//  AppWater
//
//  Created by 田中翔大 on 2022/04/07.
//

import SwiftUI

struct ModalView3: View {
    @Environment(\.presentationMode)var PresentationMode
    var body: some View {
        NavigationView{
            NavigationLink(destination: Quiz3()){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.blue)
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

struct Quiz3decodable: Decodable {
    let question: String
    let answer: String
    var choice: [String]
}

class QuizesManager3: ObservableObject {
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

struct Quiz3: View {
    
    @ObservedObject var quiz = QuizesManager3()
    
    var body: some View {
        VStack {
            ZStack{
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 100)
                    .foregroundColor(.yellow)
                Text("\(quiz.number + 1)")
                    .foregroundColor(Color.black)
            }
            Spacer()
            ZStack{
                Rectangle()
                 .stroke(lineWidth: 5)
                 .frame(width: UIScreen.main.bounds.width - 10, height: 400)
                Text(quiz.presentQuiz.question).font(.title)
                                    .foregroundColor(.black)
                                    .font(.largeTitle)
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }
            

            Spacer()
            
                HStack {

                    NavigationLink(destination: Quiz1answer1true()) {

                        Button(action: {
                                            quiz.judge(answeredNumber: 1)
                                        }){
                                            HStack {
                                                Text(quiz.presentQuiz.choice [1])
                                            }
                                        }
                                        .frame(width: 300, height: 150)
                                        .disabled(quiz.isFinished)
                                        .cornerRadius(25)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 25)
                                                .stroke(Color.blue))
                                        .padding(2)
                        
                    }
                            
                    NavigationLink(destination: Quiz1answer1false()) {

                        Label("全シアン", systemImage: "suit.club.fill")
                           
                    }
                            
                    NavigationLink(destination: Quiz1answer1false()) {

                        Label("四塩化炭素", systemImage: "suit.diamond.fill")
                            
                    }

                 
                        }
            
            //繰り返しで選択肢の表示
//            HStack{
//
//            ForEach( 0..<3) { i in
//                Button(action: {
//                    quiz.judge(answeredNumber: i)
//                }){
//                    HStack {
//                        Text(quiz.presentQuiz.choice[i])
//                    }
//                }
//                .frame(width: 300, height: 150)
//                .disabled(quiz.isFinished)
//                .cornerRadius(25)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 25)
//                        .stroke(Color.blue))
//                .padding(2)
//
//            }
//
//            }
            
            Spacer()
            
        }.onAppear(perform: {
            loadQuiz()
            quiz.prepareQuestion()
        })
            .fullScreenCover(isPresented: $quiz.isFinished) {
            ResultView3(numberOfQuestion: quiz.number, correct: quiz.correct)
        }
    }
    func loadQuiz() {
        quiz.quiz = load("QuizAnswer.json")
    }
}

struct ResultView3: View {
    var numberOfQuestion: Int
    var correct: Int
    @Environment(\.presentationMode)var PresentationMode
    
    var body: some View {
        NavigationView{
        VStack
        {
           
                NavigationLink(destination: ContentView()){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.blue)
                        Text("戻る")
                            .padding(.vertical)
                            .foregroundColor(.white)
                            .navigationBarItems(trailing:Button(action:{self.PresentationMode.wrappedValue.dismiss()
                            })
                                                {
                             
                            })
                        
                    }.offset(x:500,y: -340)

              }.navigationViewStyle(.stack)

                
        }
            
        }
            ZStack{
                
                Rectangle()
                 .stroke(lineWidth: 5)
                 .frame(width:400, height: 200)
                VStack{
                    Text("問題数: \(numberOfQuestion)")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                    Text("正解数: \(correct)")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                }
                
            }.offset(x:0,y: -350)

        }

}


func load3<T: Decodable>(_ filename: String) -> T {
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

struct Quiz3_Previews: PreviewProvider {
    static var previews: some View {
        Quiz3()
.previewInterfaceOrientation(.landscapeLeft)
    }
}

