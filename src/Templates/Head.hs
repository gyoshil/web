{-# LANGUAGE OverloadedStrings #-}
module Templates.Head where

import Data.Monoid (mempty)
import Control.Monad (when)

import Templates.Scripts

import Text.Blaze.Html5
import qualified Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5.Attributes as A

htmlHead isInteractive =
  H.head $ do
    meta ! charset "utf-8"
    meta ! name "viewport" ! content "width=device-width, initial-scale=1.0"
    meta ! name "description" ! content ""
    meta ! name "author" ! content ""
    H.title "Gyoshil"
    link ! href "css/bootstrap.min.css" ! rel "stylesheet"
    link ! href "css/font-awesome.min.css" ! rel "stylesheet"
    link ! href "css/animate.min.css" ! rel "stylesheet"
    link ! href "css/lightbox.css" ! rel "stylesheet"
    link ! href "css/main.css" ! rel "stylesheet"
    link ! href "css/responsive.css" ! rel "stylesheet"
    -- [if lt IE 9]>
    -- 	    <script src="js/html5shiv.js"></script>
    -- 	    <script src="js/respond.min.js"></script>
    --     <![endif]
    link ! rel "shortcut icon" ! href "images/ico/favicon.ico"
    link ! rel "apple-touch-icon-precomposed" ! sizes "144x144" ! href "images/ico/apple-touch-icon-144-precomposed.png"
    link ! rel "apple-touch-icon-precomposed" ! sizes "114x114" ! href "images/ico/apple-touch-icon-114-precomposed.png"
    link ! rel "apple-touch-icon-precomposed" ! sizes "72x72" ! href "images/ico/apple-touch-icon-72-precomposed.png"
    link ! rel "apple-touch-icon-precomposed" ! href "images/ico/apple-touch-icon-57-precomposed.png"
    preEscapedToHtml $ unlines [
            "<!-- Global site tag (gtag.js) - Google Analytics -->",
            "        <script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-111625545-1\"></script>",
            "        <script>",
            "        window.dataLayer = window.dataLayer || [];",
            "        function gtag(){dataLayer.push(arguments);}",
            "        gtag('js', new Date());",

            "        gtag('config', 'UA-111625545-1');",
            "        </script>"]
    when isInteractive awsScripts
