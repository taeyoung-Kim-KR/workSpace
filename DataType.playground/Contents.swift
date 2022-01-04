import UIKit

var isChecked: Bool = false
isChecked = true

var temperature: Int = -100
temperature = 100

var cakes: UInt = 100
//양의정수 타입
// cakes = -100 <- 에러

var pi: Float = 3.14
pi = 314

var pi2: Double = 3.14
pi2 = 314

var sampleCharacter: Character = "A"
sampleCharacter = "아"

var sampleString: String = "Hi"
sampleString = "안녕"


//타입추론
var test = 100
type(of: test)

var testString = "타입추론"
type(of: testString)

var sampleAny: Any = "Any"

sampleAny = 1000
sampleAny = "3.14"
sampleAny = 3.14

var sampleInt: Int? = nil
type(of: sampleInt)

var sampleString2: String? = nil
type(of: sampleString2)
