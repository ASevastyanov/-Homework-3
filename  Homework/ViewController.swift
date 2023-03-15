/*
Отображение истории было реализовано через label, и через scrollView, так же текст был отредактирован под ТЗ. Не
внимательно было прочитано ТЗ, что реализовать надо было через textView. Когда заметил, было жалко переделывать.
Прошу принять и простить выполнение задачи таким способом =)
 */

import UIKit

//Структура для записи истории в виде массива
struct HistoryItem {
    var time: String
    var value: String
}

// параметры форматирования текста для отображения истории
extension HistoryItem: CustomStringConvertible {
    var description: String {
        return "\n [\(time)]: \(value)"
    }
}

class ViewController: UIViewController {
    
    //Параметры для функции clickerCount
    enum ItemMove{
        case plus
        case minus
        case clean
    }
    
    var sumClick = 0
    var history: [HistoryItem] = []
    
    //Лейбл для отображения подсчета нажатий
    @IBOutlet weak var scoreView: UILabel!
    //Лейбл для отображения истории
    @IBOutlet weak var historyLabelView: UILabel!
    //Скролл экрана истории
    @IBOutlet weak var scrollViewForHistory: UIScrollView!
    
    //Кнопка с добавлением значения +1 scoreView
    @IBAction func clickPlusButtonView(_ sender: Any) {
        clickerCount(value: .plus)
        print("Push button plus")
    }
    
    //Кнопка с уменьшение значения -1 scoreView
    @IBAction func clickMinusButtonView(_ sender: Any) {
        clickerCount(value: .minus)
        print("Push button minus")
    }
    
    //кнопка для очистки значений scoreView
    @IBAction func cleanerButtonView(_ sender: Any) {
        clickerCount(value: .clean)
        print("Push button clean")
    }
    
    //кнопка для вкл/выкл истории
    @IBAction func historyButtonView(_ sender: Any) {
        scrollViewForHistory.isHidden = !scrollViewForHistory.isHidden
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreView.text = "0" //Отображение label при запуске приложения
    }
    
    //Функция для сохранение истории и отображения ее с необходимым текстом
    func recordHistory(value: String){
        let dateClick = Date()
        let factDate = dateClick.formDate
        let item = HistoryItem(time: factDate, value: value)
        history.append(item)
        if history.isEmpty {
            print("History is empty")
        } else {
            print("Record history success")
            historyLabelView.text! += "\(item.description)"
        }
     }
    
    //Функция для работы с подсчетом очков и сбросом значений
    func clickerCount(value: ItemMove){
        switch value{
        case .plus:
            sumClick += 1
            recordHistory(value: "значение изменено на +1")
            print("activ func + \(sumClick)")
        case .minus:
            if sumClick > 0 {
                sumClick -= 1
                recordHistory(value: "значение изменено на -1")
                print("activ func - \(sumClick)")
            } else {
                recordHistory(value: "попытка уменьшить значение счётчика ниже 0")
                print("Value cannot be less than zero")
            }
        case .clean:
            sumClick = 0
            scoreView.text = "Значение счетчика: \(sumClick)"
            recordHistory(value: " значение сброшено")
            print("activ func clean")
        }
        scoreView.text = "Значение счетчика: \(sumClick)"
    }
    
}

//расшеренние для настройки времени
extension Date {
    var formDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/mm/yyyy HH:mm:ss"
        return dateFormatter.string(from: self)
    }
}
