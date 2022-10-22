# JW Biller

## How to install?
* Install Ruby. In this case download and install Ruby 2.4.10 from this [link](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.4.10-1/rubyinstaller-devkit-2.4.10-1-x64.exe).
* Extract the Jwbiller archive to some directory.
* Open a command prompt (preferred Power Shell) and move to the extracted directory.
* Execute `gem install bundler` to install the bundler required to prepare the project.
* Once bundler is install execute `bundle install`.
* Install `WK<html>ToPDF` from this [link](https://wkhtmltopdf.org/downloads.html) (Download the windows 64 bit version, ignore chrome warnings).
* Update the `bill_config.json` file to set the rates of metal.
* From the command prompt run `rails server`.
* Open http://127.0.0.1:3000/ 