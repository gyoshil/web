{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}

module Pages.Programs.AllPrograms (allPrograms) where

import Text.Blaze.Html5 hiding (map,head)
import qualified Text.Blaze.Html5 as H hiding (head)
import Text.Blaze.Internal (AttributeValue)
import Data.String
import qualified Data.List as L
import Text.Blaze.Html5.Attributes hiding (name)
import qualified Text.Blaze.Html5.Attributes as A hiding (name)


import Pages.Programs.Util
import Pages.Programs.Feb2018
import Pages.Programs.SATPlus2018


allPrograms :: [Program]
allPrograms = sortWith epoch
  [
   nov2018
  ]

nov2018 = Program{
  name = "Gyoshil BK"
 ,location = "BK, NYC"
 ,dates = "Nov 2018"
 ,epoch = 1540257930
 ,summary = do
    p "This is our inaugural program in Brooklyn. Using an interdisciplinary approach to test prep, combining in-depth Math, English, and Science courses with improvisation, meditation, and clown classes simultaneously, we seek to create a curriculum that keeps students mindful and stimulated on the subjects they are learning. In short: we’re making test prep fun!"
 ,mainPic = "images/home/shirts.jpg"
 ,captionedPics = [
   ("images/programs/feb2017/aaronClass.jpg":: AttributeValue,"Aaron Profumo works through the meaning of storytelling with students."),
   ("images/home/students_outside.jpg":: AttributeValue,"Students participate in group activities during World Scholars SAT+ 2018."),
   ("images/home/class.jpg":: AttributeValue,"Learning about the basics of computer science in World Scholars SAT+ 2017."),
   ("images/programs/ggu1.jpg":: AttributeValue, "Group work time during World Scholars in Korea, 2016")]
 ,extraHTML = do
    h1 "" 
}
