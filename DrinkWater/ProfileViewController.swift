//
//  ProfileViewController.swift
//  DrinkWater
//
//  Created by 심민규 on 2021/10/11.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nickNameTextField: UITextField! { didSet { nickNameTextField.delegate = self}}
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.topItem?.title = "물 마시기"
        
        //닉네임, 키, 몸무게 값 가져오기
        let nickName = UserDefaults.standard.string(forKey: "userNick")
        let height = UserDefaults.standard.string(forKey: "userCM")
        let weight = UserDefaults.standard.string(forKey: "userKG")
        
        nickNameTextField.text = nickName
        heightTextField.text = height
        weightTextField.text = weight
    }
    
        //입력한 값으로 저장하기 (저장버튼 따로 구현 x)
    @IBAction func nickname(_ sender: UITextField) {
    
        let userNickName = nickNameTextField.text
        UserDefaults.standard.set(userNickName, forKey: "userNick")
        /* 데이터를 주고 받기 위한 함수를 짜보는 중인데,,, 어려움...
        guard let Drink =
                self.storyboard?.instantiateViewController(withIdentifier: "Drink")as? DrinkWaterViewController else {
                    return
                }
        Drink.nickNameTextField = self.nickNameTextField
        Drink.heightTextField = self.heightTextField
        Drink.weightTextField = self.weightTextField
        
        self.navigationController?.pushViewController(DrinkWaterViewController, animated: true)*/
    }
    
    @IBAction func height(_ sender: UITextField) {
        
        let userHeight = heightTextField.text
        UserDefaults.standard.set(userHeight, forKey: "userCM")
    }
    
    @IBAction func weight(_ sender: UITextField) {
    
        let userWeight = weightTextField.text
        UserDefaults.standard.set(userWeight, forKey: "userKG")
    }
}
