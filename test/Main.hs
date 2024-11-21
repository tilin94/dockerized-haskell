module Main where

import Test.Tasty
import Test.Tasty.HUnit

import NewProject ()

main :: IO ()
main =
  defaultMain $ testGroup "Testing NewProject" [dummyTestSuite]

dummyTestSuite :: TestTree
dummyTestSuite =
  testGroup "Dummy Test suite" [testCase "Dummy test case" $ True @?= True]
