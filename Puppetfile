# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "2.1.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "gcc",        "1.0.0"
github "git",        "1.2.2"
github "homebrew",   "1.1.2"
github "hub",        "1.0.3"
github "inifile",    "0.9.0", :repo => "puppetlabs/puppetlabs-inifile"
github "ruby",       "4.1.0"
# github "nginx",      "1.4.0"
# github "nodejs",     "2.2.0"
github "repository", "2.0.2"
github "stdlib",     "4.0.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "autojump",   "1.0.0"
github "osx",        "1.3.0"
#github "inifile",    "1.0.0"

# Development Environment
github "ctags",      "1.0.0"
github "zsh",        "1.0.0"

# F1 Project Development
github "solr",       "1.0.1"
github "mysql",      "1.1.5"
github "php",        "0.5.6"

# PHP Project Dependencies
github "autoconf",   "1.0.0"
github "libtool",    "1.0.0"
github "pkgconfig",  "1.0.0"
github "pcre",       "1.0.0"
github "wget",       "1.0.0"

# Applications
#github "adium",      "1.1.1"
#github "alfred",     "1.0.2"
#github "caffeine",   "1.0.0"
#github "chrome",     "1.1.0"
#github "firefox",    "1.0.6"
#github "iterm2",     "1.0.2"
#github "macvim",     "1.0.0"
#github "phpstorm",   "v6.0.1"
#github "sequel_pro", "1.0.0"
#github "slate",      "1.0.0"
#github "sourcetree", "1.0.0"
#github "spotify",    "1.0.0"
