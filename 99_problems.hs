
-- 1 Find the last element of a list.
-- Prelude> myLast [1,2,3,4]
-- 4
myLast a = head (reverse a)
myLast' a = a !! (length(a) - 1)

-- 2 Find the last but one element of a list.
-- Prelude> myButLast [1,2,3,4]
-- 3
-- Prelude> myButLast ['a'..'z']
-- 'y'
myButLast a = a !! (length(a) - 2)
myButLast' :: [a] -> a
myButLast' = last . init

-- 3 Find the K'th element of a list. The first element in the list is number 1.
-- Prelude> elementAt [1,2,3] 2
-- 2
-- Prelude> elementAt "haskell" 5
-- 'e'
elementAt a b = last (take b a)

-- 4 Find the number of elements of a list.
-- Prelude> myLength [123, 456, 789]
-- 3
-- Prelude> myLength "Hello, world!"
-- 13
myLength a = (sum [1 | _ <- a ]) - 1

-- 5 Reverse a list.
-- Prelude> myReverse "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"
-- Prelude> myReverse [1,2,3,4]
-- [4,3,2,1]

-- 6 Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
-- *Main> isPalindrome [1,2,3]
-- False
-- *Main> isPalindrome "madamimadam"
-- True
-- *Main> isPalindrome [1,2,4,8,16,8,4,2,1]

-- 7 Flatten a nested list structure.
--  data NestedList a = Elem a | List [NestedList a]
-- *Main> flatten (Elem 5)
-- [5]
-- *Main> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
-- [1,2,3,4,5]
-- *Main> flatten (List [])
-- []

-- 8 Eliminate consecutive duplicates of list elements.
-- Example in Haskell:

-- > compress "aaaabccaadeeee"
-- "abcade"

-- 9 Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
-- *Main> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a',
--              'a', 'd', 'e', 'e', 'e', 'e']
-- ["aaaa","b","cc","aa","d","eeee"]

-- 10 Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
-- encode "aaaabccaadeeee"
-- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
