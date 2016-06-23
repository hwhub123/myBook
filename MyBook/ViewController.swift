//
//  ViewController.swift
//  MyBook
//
//  Created by MF839-014 on 2016. 6. 23..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var myBooks = [BookInfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myBooks = self.loadBookData()
        print(myBooks)
    }
    
    override func viewDidAppear(animated: Bool) {
//        self.showLoginPopup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myBooks.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("book_cell", forIndexPath: indexPath) as? BookTableViewCell

        guard let myCell = cell else {
            return UITableViewCell()
        }

        // Configure the cell...
        myCell.bookTitle.text = myBooks[indexPath.row].title
        myCell.bookWriter.text = myBooks[indexPath.row].writer
        myCell.coverImageView.image = myBooks[indexPath.row].cover
        
        print("cellForRowAtIndexPath")
        
        return myCell
    }
    
    func loadBookData() -> [BookInfo] {
        let book1 = BookInfo(newTitle: "iOS 9 프로그래밍", newWriter: "닐 스미스", newDescription: "[핵심만 골라 배우는 iOS 9 프로그래밍]은 iOS 9 SDK와 Xcode 7, 그리고 스위프트 2 프로그래밍 언어를 이용하여 iOS 애플리케이션을 생성하는 데 필요한 기술을 가르치는 데 목적을 둔다. 독자들이 iOS 개발이 처음인지, 아니면 iOS 8 개발 경험이 있어서 iOS 9의 기능들과 최신 스위프트 프로그래밍 언어를 빠르게 습득하고자 하는지에 따라 이 책의 활용 방법이 크게 달라지겠지만, 이 책은 양쪽 모두를 대상으로 하는 iOS 참고서 역할을 하므로 안심하고 배울 수 있을 것이다.", newCover: UIImage(named: "1"))
        let book2 = BookInfo(newTitle: "Swift로 하는 iOS 프로그래밍", newWriter: "매트뉴버그", newDescription: "『Swift로 하는 iOS 프로그래밍』는 스위프트(Swift) 언어를 이용해서 iOS 애플리케이션을 개발하려는 프로그래머, 오브젝티브C 문법에 익숙한 개발자, 그리고 iOS 인터페이스 구성과 작동 원리, 구현 철학을 이해하려는 UI 디자이너를 위한 iOS 앱 개발 입문서로 스위프트의 변수와 함수, 스코프(Scope)와 네임스페이스, 객체 타입과 인스턴스 등을 통해 객체지향형 콘셉트를 소개한다.", newCover: UIImage(named: "2"))
        let book3 = BookInfo(newTitle: "구글의 미래", newWriter: "토마스 슐츠", newDescription: "미래를 상대로 한 구글의 도박이 시작되었다! 최근 구글 딥마인드가 개발한 인공지능 알파고가 전세계를 충격에 빠뜨렸다. 먼 미래의 이야기라 여겼던 것들이 생각했던 것보다 더욱 가까이 다가와 있음을 체감하게 만들었다. 그로부터 시작된 과학기술이 바꿔놓을 미래에 대한 뜨거운 논쟁은 자연스럽게 구글의 행보에 대한 관심으로 이어졌다. 인공지능, 로봇기술, 생명과학이 주도하며 전에 없던 속도로 세상에 변화를 가져올 것이라는 제4차산업혁명 시대에 구글이 어떤 태세를 취하는지 이목이 집중되었다.", newCover: UIImage(named: "3"))
        
//        let books = [book1, book2, book3]
        let books = [book1, book2, book3, book1, book2, book3, book1, book2, book3, book1, book2, book3, book1, book2, book3, book1, book2, book3, book1, book2, book3]
        
        return books
    }
    
    func showLoginPopup() {
//        let alert = UIAlertController(title: "알림", message: "알림 샘플", preferredStyle: .ActionSheet)
//        let cancelAction = UIAlertAction(title: "취소", style: UIAlertActionStyle.Cancel, handler: nil)
//        alert.addAction(cancelAction)
//        
//        let saveAction = UIAlertAction(title: "저장", style: .Default, handler:  nil)
//        alert.addAction(saveAction)
//
//        let userAction1 = UIAlertAction(title: "Test", style: .Default, handler: {
//            (action) in
//            print("Test")
//        })
//        alert.addAction(userAction1)
//        
//        let facebookAction = UIAlertAction(title: "Facebook", style: .Default, handler:  nil)
//        alert.addAction(facebookAction)
//
//        let twitterAction = UIAlertAction(title: "Twitter", style: .Default, handler:  nil)
//        alert.addAction(twitterAction)
//
//        let kakaoAction = UIAlertAction(title: "Kakao", style: .Default, handler:  nil)
//        alert.addAction(kakaoAction)
//
//        self.presentViewController(alert, animated: true, completion: nil)
        let loginAlert = UIAlertController(title: "로그인", message: "로그인 정보를 입력하세요", preferredStyle: .Alert)

        loginAlert.addTextFieldWithConfigurationHandler({
            (loginTextField:UITextField) in
            loginTextField.placeholder = "아이디"
        })
        
        loginAlert.addTextFieldWithConfigurationHandler({
            (passwordTextField:UITextField) in
            passwordTextField.placeholder = "비밀번호"
            passwordTextField.secureTextEntry = true
        })
        
        let cancelAction = UIAlertAction(title:"취소", style: .Cancel, handler: nil)
        let confirmAction = UIAlertAction(title:"확인", style: .Default) {
            (_) in
            let loginId = loginAlert.textFields?[0].text
            let password = loginAlert.textFields?[1].text
            
            if loginId == "test" && password == "1234" {
                print("로그인 성공")
            } else {
                print("로그인 실패")
            }
            
        }
        
        loginAlert.addAction(cancelAction)
        loginAlert.addAction(confirmAction)
        
        self.presentViewController(loginAlert, animated: true, completion: nil)
    }
    
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailVC = segue.destinationViewController as? BookDetailViewController
        
        let indexPath = self.tableView.indexPathForCell(sender as! UITableViewCell)
        
        if let vc = detailVC {
            vc.book = myBooks[indexPath!.row]
        }
    }
}

