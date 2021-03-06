//: [<< Previous](@previous) - [Index](Index)

import RxSwift

/*:
## Filtering Observables

Operators that selectively emit items from a source Observable.
*/

/*:
### `filter`

Emit only those items from an Observable that pass a predicate test

![](https://raw.githubusercontent.com/kzaher/rxswiftcontent/master/MarbleDiagrams/png/filter.png)

[More info in reactive.io website]( http://reactivex.io/documentation/operators/filter.html )
*/

example("filter") {
    let subscription = sequenceOf(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
        .filter {
            $0 % 2 == 0
        }
        .subscribe {
            print($0)
        }
}


/*:
### `distinctUntilChanged`

Suppress duplicate items emitted by an Observable

![](https://raw.githubusercontent.com/kzaher/rxswiftcontent/master/MarbleDiagrams/png/distinct.png)

[More info in reactive.io website]( http://reactivex.io/documentation/operators/distinct.html )
*/
example("distinctUntilChanged") {
    let subscription = sequenceOf(1, 2, 3, 1, 1, 4)
        .distinctUntilChanged()
        .subscribe {
            print($0)
        }
}


/*:
### `take`

Emit only the first n items emitted by an Observable

![](https://raw.githubusercontent.com/kzaher/rxswiftcontent/master/MarbleDiagrams/png/take.png)

[More info in reactive.io website]( http://reactivex.io/documentation/operators/take.html )
*/
example("take") {
    let subscription = sequenceOf(1, 2, 3, 4, 5, 6)
        .take(3)
        .subscribe {
            print($0)
        }
}



//: [Index](Index) - [Next >>](@next)
