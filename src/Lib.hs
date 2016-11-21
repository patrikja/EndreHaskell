module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

formel :: Int -> Double
formel n = pi * x^2
  where x = fromIntegral n

skillnadFrånHeltal :: Double -> Double
skillnadFrånHeltal y = abs (y - fromIntegral (round y))

allaSkillnader = map (\n->(n, skillnadFrånHeltal (formel n))) [1..]

småSkillnader gräns = filter ((<=gräns).snd) allaSkillnader

test = take 10 (småSkillnader 0.0005)
