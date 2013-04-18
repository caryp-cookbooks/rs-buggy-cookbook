# buggy-cookbook cookbook

A simple cookbook to demonstrate how to debug errors.  Once all the errors are fixed the server should display a very simple apache2 index.html page owned by the root user.

I've already said too much ;)

# Requirements

Requires Chef 0.10.10 or later.  
Tested on Ubuntu 12.04

# Usage

Add the following runlist to your server:

    [
      "recipe[apt::default]",
      "recipe[buggy-cookbook::default]",
      "recipe[buggy-cookbook::simple_index]"
    ]
    
There is a bug in both recipes.  They are pretty simple so I will leave it to you to find them.

# Recipes

```buggy-cookbook::default``` : Installs the apache webserver

```buggy-cookbook::simple_index``` : Uses a template resource to setup a simple page


# Author

Author:: kindsol (<kindsol2--at--gmail>)
