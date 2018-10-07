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
		p "Gyoshil (Korean: 교실, classroom) is a collective of young professionals with a common goal of bringing a diversity of thought to Western pedagogy. With experience in various roles in both Western and Eastern educational institutions, Gyoshil is an initiative specifically focused on bringing parts of Eastern pedagogy to the Western classroom. For better or worse, standardized tests are an increasingly critical part of academic evaluation in the US. We take lessons learned from Korea on how students can learn to handle these challenges both academically and emotionally."
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
	textRightImg "images/home/IMG_1211.JPG" "Tackling test anxiety early" "From a young age, the Korean tradition of ___ exposes students to low-stakes performance opportnuities. In a culture that has revolved around high-stakes testing for generations, ___ gives students an outlet to practice getting on stage and expressing themselves comfortably. The experiences gained from ___ help students feel more comfortable during the high-stakes testing environments that they will inevitably face."
	textLeftImg "images/home/IMG_1211.JPG" "Passion for Humanities and Sciences" "From Acting to Computer Science, the world scholars bring a range of experience to campus that enlivens the atmosphere, and asks students to push beyond their comfort zone."
	textRightImg "images/home/IMG_1376.JPG" "Experienced and Enthusiastic" "The world scholars come from both academia and industry, giving students a look into what sort of careers are possible when you dream big."

    -- /#features
