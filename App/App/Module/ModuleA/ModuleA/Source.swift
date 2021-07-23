//
//  Source.swift
//  ModuleA
//
//  Created by Inpyo Hong on 2021/07/23.
//

import Foundation
import Alamofire
import RxSwift
import RxCocoa

public class A {
    var disposeBag = DisposeBag()
    
    public init() {
        print(Alamofire.HTTPMethod.post.rawValue)
        
        Observable.just("I Love You!")
            .asObservable()
            .subscribe(onNext: {
                print($0)
            })
            .disposed(by: self.disposeBag)
    }
}
