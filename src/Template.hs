{-# LANGUAGE OverloadedStrings #-}
module Template where

import Prelude
import qualified Prelude as P
import Data.Monoid (mempty)

import Text.Blaze.Html5
import qualified Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5.Attributes as A

import Templates.Head
import Templates.Header
import Templates.Scripts
import Templates.Footer


embedInTemplate :: Bool -> [String] -> Html -> Html
embedInTemplate isInteractive jsSources x = do
    docTypeHtml ! lang "en" $ do
      htmlHead isInteractive
      body $ do
          htmlHeader isInteractive
          x
          htmlFooter
          htmlScripts jsSources

