//
//  PlayLotto.swift
//  CodeStarterCamp_Week2
//
//  Created by 정선아 on 2022/04/22.
//

import Foundation

func playLotto() {
    pickLottoNumbers()
    matchNumber(myLottoNumbers, lottoNumbers: lottoNumbers)
    comfirmNumbers()
}

//찍은 번호
let myLottoNumbers: [Int] = [4, 13, 24, 36, 38, 45]

//로또 번호 배열
var lottoNumbers: [Int] = []

//로또 번호 랜덤 뽑기
func pickLottoNumbers() {
    while lottoNumbers.count < 6 {
        let number = Int.random(in: 1...45)
        if lottoNumbers.contains(number) == false {
            lottoNumbers.append(number)
        }
    }
}

//찍은 번호와 로또 번호가 일치하면 들어가는 배열
var matchedNumbers: [Int] = []

func matchNumber(_ myLottoNumbers: [Int], lottoNumbers: [Int]) {
    for number in myLottoNumbers {
        if lottoNumbers.contains(number) {
            matchedNumbers.append(number)
        }
    }
}

//matchedNumbers를 String타입으로 변환하는 과정
func convertArray(from array: [Int]) -> [String] {
    let convertArray = array.map({ (number: Int) -> String in return "\(number)"
        return "\(number)"
    })
    return convertArray
}

let matchedNumbersToString = convertArray(from: matchedNumbers)

//결과 출력
func comfirmNumbers() {
    if matchedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchedNumbersToString.joined(separator: ",")) 입니다!")
    }
}
