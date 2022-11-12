
import SwiftUI

//最初の画面に戻ってっくる
class EnvironmentData1: ObservableObject {
    @Published var isNavigationActive: Binding<Bool> = Binding<Bool>.constant(false)
}


struct ModalView4: View {
    
    @State var shouldShowSecondView: Bool = false
       @EnvironmentObject var envData: EnvironmentData
    
    var body: some View {
        NavigationView {
            VStack(spacing: 100) {
                Text("3択クイズ")
                    .font(.largeTitle)
                NavigationLink(destination: Quiz4(), isActive: $shouldShowSecondView) {
                    EmptyView()
                }
                Button(action: {
                    shouldShowSecondView = true
                    envData.isNavigationActive = $shouldShowSecondView
                }){
                    Text("スタート")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }
                .padding(.all)
                .background(Color.blue)
            }
        }.navigationViewStyle(.stack)
    }
}

struct Quiz4: View {
    
    @State private var ShowQuizResultView: Bool = false
    @State private var CommentaryView: Bool = false
    
    var quiz = [
         "熊本の地下水を汚染している代表的な物質はどれ？",
         "地下水は日本の水使用量全体の約何％を占めている？",
         "地下水が減少している理由は2つあり、\n一つは、水田が畑になっていることである。もう一つは？"
     ]
    var answer = ["普通のニート", "砂", "優しい","正解4","正解5"]
     
    var AnswerColumn = [
         ["普通のニート", "キムタク", "自分"],
         ["砂", "ピーマン", "じゃがいも"],
         ["優しい", "頼りになる", "思いやりがある"],
         ["正解4","不正解","不正解"],
         ["不正解","不正解","正解5"]
    ]
    
    var Commentary = [
       "解説1","解説2","解説3","解説4","解説5"
    ]
    
       @State var correctFlg = false
       @State var incorrectFlg = false
       @State var invalidBtn = false
       
       @State var quizNum = 0
       @State var CommentaryNum = 0
       @State var quizScore = 0
       @State var quizjudge = 0
       
       var randomNum = [0,1,2]
    
    init() {
         randomNum.shuffle()
         for i in 0..<quiz.count {
             AnswerColumn[i].shuffle()
         }
     }
    
    func CorrectAnswer(btnNum: Int) -> Bool {
        if AnswerColumn[randomNum[quizNum]][btnNum] == answer[randomNum[quizNum]] {
            return true
        }
        return false
    }
    func btnAction(count: Int) {
        //押されたボタンが正解かどうか
        if CorrectAnswer(btnNum: count) {
            self.correctFlg = true
            self.quizScore += 1
        } else {
            self.incorrectFlg = true
        }
        
        //一時的にボタンを無効にする
        self.invalidBtn = true
        
        //一秒後に画像を非表示にし、問題を進める
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.correctFlg = false
            self.incorrectFlg = false
            self.invalidBtn = false
            
            if quizNum == 2 {
                self.ShowQuizResultView = true
            } else {
                quizNum += 1
            }
        }
    }
    
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                Text("地下水\(quizNum + 1)")
                    .font(.title)
                    .padding(.bottom, 30.0)
                
                Text(quiz[randomNum[quizNum]])
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 40.0)
                    .padding(.trailing, 40.0)
                    .frame(width: 400, height: 170, alignment: .top)
                
                Text(Commentary[randomNum[quizNum]])
                
                HStack{
                ForEach(0..<3) { count in
                    Button(action: {
                        btnAction(count: count)
                    }) {
                        Text(AnswerColumn[randomNum[quizNum]][count])
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    .padding(.all)
                    .frame(width: 300, height: 80)
                    .background(Color.blue)
                    .disabled(invalidBtn)
                }
                }
            }
            
            Image(systemName: "circle")
                .resizable()
                .scaledToFit()
                .frame(width: 300.0, height: 300.0)
                .visible(correctFlg)
                       
            Image(systemName:"multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 300.0, height: 300.0)
                .visible(incorrectFlg)
        }
        .fullScreenCover(isPresented: $ShowQuizResultView) {
            QuizResultView(score: quizScore, quizCount: quiz.count)
        }
    }
}


struct CommentaryView: View{
    
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var envData: EnvironmentData
    
    let score: Int
    let quizCount: Int
    
    var body: some View {
        VStack{
            Image("multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 300.0, height: 300.0)
            Button("画面を閉じる") {
                dismiss()
            }
        }
    }
}


struct QuizResultView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var envData: EnvironmentData
    
    let score: Int
    let quizCount: Int
    
    var body: some View {
        VStack {
            Text("結果")
                .font(.largeTitle)
                .padding(.bottom, 10.0)
            
            Text("\(score) / \(quizCount)")
                .font(.largeTitle)
                .padding(.bottom, 50.0)
            
            Button(action: {
                dismiss()
                envData.isNavigationActive.wrappedValue = false
            }) {
                Text("最初に戻る")
                    .font(.title)
                    .foregroundColor(Color.white)
            }
            .padding(.all)
            .frame(width: 200, height: 80)
            .background(Color.blue)
        }
    }
}

struct VisibleModifier : ViewModifier {
    let visible:Bool
    @ViewBuilder
    func body(content: Content) -> some View {
        if visible == false {
            content.hidden()
        } else {
            content
        }
    }
}


extension View {
    func visible(_ visible:Bool) -> some View {
        modifier(VisibleModifier(visible: visible))
    }
}

struct Quiz4_Previews: PreviewProvider {
    static var previews: some View {
        Quiz4()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
