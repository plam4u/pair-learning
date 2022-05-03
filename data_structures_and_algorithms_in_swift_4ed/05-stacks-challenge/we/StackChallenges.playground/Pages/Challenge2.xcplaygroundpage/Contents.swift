// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 
 ## #2. Balance Parentheses
 
 Check for balanced parentheses. Given a string, check if there are `(` and `)` characters, and return `true` if the parentheses in the string are balanced.
 ```
 // 1
 h((e))llo(world)() // balanced parentheses
 // 2
 (hello world // unbalanced parentheses
 ```
 */
var testString1 = "h((e))llo(world)()"
var testString2 = "(h((e))llo(world)()"
var testString3 = "(helo"
var testString4 = "hello)"

// your code here
func checkParentheses(_ string: String) -> Bool {
    var stack = Stack<Void>()
    for char in string {
        if char == "(" {
            stack.push(())
        } else if char == ")" {
            if stack.isEmpty {
                return false
            }
            stack.pop()
        }
    }
    return stack.isEmpty
}

assert(checkParentheses(testString1))
assert(checkParentheses(testString2) == false)
assert(checkParentheses(testString3) == false)
assert(checkParentheses(testString4) == false)
