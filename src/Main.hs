module Main where

import Text.Blaze.Html.Renderer.Pretty (renderHtml)
import qualified Text.Blaze.Html5 as H
--import Data.ByteString
import GHC.IO.Encoding

import Pages.Index

import Pages.About
import Pages.Programs
import qualified Pages.Programs.AllPrograms as P
import qualified Pages.Programs.Util as P

import Pages.People
import qualified Pages.People.Everyone as E

import Template

main :: IO()
main = do
  setLocaleEncoding utf8
  makePage "html/index.html" index
  makePage "html/about.html" about
  makePage "html/programs.html" programs
  writeEveryone
  writePrograms
  
  
writePrograms :: IO()  
writePrograms  = 
    mapM_
      (\p -> makePage ("html/"++P.linkTo p) $ P.makeProgramPage p)
      P.allPrograms 

writeEveryone :: IO()  
writeEveryone = 
    mapM_
      (\p -> makePage ("html/"++E.linkTo p) $ E.makeBio p)
      E.everyone 


makePage link p =
  writeFile link $ renderHtml $ embedInTemplate False [] p
