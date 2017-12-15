import Test.Hspec
import RD
import Control.Monad.Writer

main:: IO ()
main = hspec $ do
        describe "given a list of integer" $ do
            it "returns the sum" $ do
                sumItAll [1,2,3] `shouldBe` 6 

        describe "given a list of unsorted integers" $ do
            it "returns the sorted list" $ do
                qsort [2,2,3,1,1] `shouldBe` [1,1,2,2,3] 
            it "and can also return the sorted list of letters" $ do
                qsort ['c','a','b'] `shouldBe` ['a','b','c']
        describe "given a list of unsorted integers" $ do
            it "returns the reverse sorted list" $ do
            rqsort [1,2,3] `shouldBe` [3,2,1] 
        it "and can also return the reverse sorted list of letters" $ do
            rqsort ['a','b','c'] `shouldBe` ['c','b','a']
        describe "we want implement fizz buzz" $ do
            it "should return the number when not meeting the above conditions" $ do
                fizzbuzz 2 `shouldBe` "2"
            it "should return fizz when mod 3" $ do
                    fizzbuzz 6 `shouldBe` "fizz"
            it "should return buzz when mod 5" $ do
                    fizzbuzz 10 `shouldBe` "buzz"
            it "should return fizzbuzz when mod 3 and 5" $ do
                 fizzbuzz 45 `shouldBe` "fizzbuzz"
       -- describe "run a sequence of io action" $ do
       --        it "should return the squenced inputs to IO" $ do
        --       fst (runWriter seqn [getChar,getChar,getChar]) `shouldBe` "abc"