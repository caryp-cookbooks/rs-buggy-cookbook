name             "buggy-cookbook"
maintainer       "kindsol"
maintainer_email "kindsol2--at--gmail"
license          "Apache 2.0"
description      "Installs/Configures buggy-cookbook"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

recipe "buggy-cookbook::default", "Installs the apache webserver"
recipe "buggy-cookbook::simple_index", "Uses a template resource to setup a simple page"
  
attribute "buggy-cookbook/title",
  :display_name => "Index Page Title",
  :description => "Title the index.html page",
  :required => "optional",
  :default => "",
  :recipes => ["buggy-cookbook::simple_index"]
  
attribute "buggy-cookbook/header",
  :display_name => "Index Page Header",
  :description => "Header on the index.html page",
  :required => "optional",
  :default => "",
  :recipes => ["buggy-cookbook::simple_index"]
  
attribute "buggy-cookbook/message",
  :display_name => "Index Page Test",
  :description => "Text for the main paragraph on the index.html page",
  :required => "optional",
  :default => "",
  :recipes => ["buggy-cookbook::simple_index"]
