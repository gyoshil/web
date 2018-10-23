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

import Control.Monad (forM_, mapM_)

allPrograms :: [Program]
allPrograms = sortWith epoch
  [
   nov2018
  ]

nov2018 = Program{
  name = "ELA, 3rd and 4th Graders"
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
   h2 "Key Information"
   p $ do
     "Registration for the full day is $70. Please complete the "
     a ! href "https://goo.gl/forms/KIMGTVqqEUrKlBH53" $ "Google form"
     "to register. Registration is capped at 15 students. You may bring payment in cash or check on the morning of the program. Gyoshil dedicates 10% of our classroom to scholarship students. Please let us know when you apply if you have any financial constraints and we promise you we will try to meet them. We offer free lunch to scholarship students as well."
   p $ do
     "Please sign the "
     a ! href "docs/BK-1.pdf" $ "release and classroom behavior forms" 
     "for your student for this program. We will also have copies available on the first day of the program if you are not able to print these ahead of time."
   p "The program will run from 8:30 AM to 3:30 PM. Below is an outline of the schedule. The schedule is still subject to slight changes, depending on the classroom atmosphere."
   myTable ([["8:30 AM - 9:00 AM", "Students dropped off"]
            ,["9:00 AM", "Practice ELA Test"]
            ,["10:00 AM", "Intro to Testing strategies"]
            ,["10:45 AM", "Math class"]
            ,["11:45 PM", "Lunch"]
            ,["12:15 PM", "Clown Class"]
            ,["1:00 PM", "English Class"]
            ,["2:00 PM", "Second Test"]
            ,["3:00 PM", "Discuss Results"]
            ,["3:15 PM - 3:45 PM", "End of day pickup"]] :: [[String]])
   p "Our program will be located at Brooklyn Works at 159, Brooklyn, NY."
   H.div ! A.style "width:60%; margin:0 auto;" $ preEscapedToHtml googleMapsEmbed
   object ! A.data_ "docs/brochure.pdf" ! A.type_ "application/pdf" ! width "88%" ! height "900px" $ do
     a ! href "docs/brochure.pdf" $ "Download a brochure"

}

googleMapsEmbed :: String
googleMapsEmbed = "<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3026.461926891012!2d-73.99770604783798!3d40.66378997923577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25aef44dd2d53%3A0xd6bc6d7d381467b9!2sBrooklynWorks+at+159!5e0!3m2!1sen!2sus!4v1540261326459\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>"


myTable :: (ToMarkup a) => [[a]] -> Html
myTable xs = table ! A.class_ "price-table" $ forM_ xs (tr . mapM_ (td . toHtml))
    

