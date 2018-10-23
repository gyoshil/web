{-# LANGUAGE OverloadedStrings #-}

module Pages.Index where

import Prelude
import qualified Prelude as P
import Data.Monoid (mempty)

import Text.Blaze.Html5
import qualified Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5.Attributes as A

import Templates.Blocks

index :: Html
index = do
    section ! A.id "home-slider" $ do
	H.div ! class_ "container" $ H.div ! class_ "row" $ H.div ! class_ "main-slider" $ do
	    H.div ! class_ "slide-text" $ do
		h1 "Bringing the world to you"
		p "From the Korean 교실, translated to “classroom,” Gyoshil is a program dedicated to easing the stress and anxiety around standardized testing for kids of all ages. Using an interdisciplinary approach to test prep, combining in depth math, english, and science courses with improvisation, meditation, and clown classes simultaneously, we seek to create a curriculum that keeps students mindful and stimulated the subjects they are learning. In short: we’re making test prep fun!"
		a ! href "mailto:fiona@worldscholars.global" ! class_ "btn btn-common" $ "CONTACT US"
	    img ! src "images/home/slider/hill.png" ! class_ "slider-hill" ! alt "slider image"
	    img ! src "images/home/slider/house.png" ! class_ "slider-house" ! alt "slider image"
	    img ! src "images/home/slider/sun.png" ! class_ "slider-sun" ! alt "slider image"
	    img ! src "images/home/slider/birds1.png" ! class_ "slider-birds1" ! alt "slider image"
	    img ! src "images/home/slider/birds2.png" ! class_ "slider-birds2" ! alt "slider image"
	H.div ! class_ "preloader" $ i ! class_ "fa fa-sun-o fa-spin" $ mempty
    
    -- /#home-slider
    {-section ! A.id "services" $ H.div ! class_ "container" $ H.div ! class_ "row" $ do
	mapM_ 
	  (\(i,t,d) -> 
	    H.div ! class_ "col-sm-4 text-center padding wow fadeIn" ! dataAttribute "wow-duration" "1000ms" ! dataAttribute "wow-delay" "300ms" $ H.div ! class_ "single-service" $ do
	      H.div ! class_ "wow scaleIn" ! dataAttribute "wow-duration" "500ms" ! dataAttribute "wow-delay" "300ms" $ img ! src i ! alt ""
	      h2 t
	      p d)
	   [("images/home/icon1.png","New Perspective","Bringing an international experience to local students")
	   ,("images/home/icon2.png","New Perspective","Bringing an international experience to local students")
	   ,("images/home/icon3.png","New Perspective","Bringing an international experience to local students")]-}


    
    -- /#action
    section ! A.id "features" $ H.div ! class_ "container" $ H.div ! class_ "row" $ do
	textRightImg "images/home/IMG_1211.JPG" "Tackling test anxiety early" "We are a group of passionate, young professionals, who in addition to our professional careers have created this collective in our free time. We are all educators at heart and want to make a difference in our communities through education. We remember how daunting the slew of testing was when we were kids, and Gyoshil is our way to give back and make the experience better for others."
	textLeftImg "images/home/IMG_1211.JPG" "Passion for Humanities and Sciences" "Among our team we have graduated from Yale, Columbia, and Harvard, with masters degrees and PhDs in disciplines ranging from Computer Science and Medicine, to Acting and Theology. We are from Korea, Germany, Brooklyn, and Massachusetts. We work at Amazon, Microsoft, on Broadway, and in coffee shops. "
	textRightImg "images/home/IMG_1376.JPG" "Experienced and Enthusiastic" "Gyoshil dedicates 10% of our classroom to scholarship students. Please let us know when you apply if you have any financial constraints and we promise you we will try to meet them. We offer free lunch to scholarship students as well."

    -- /#features
