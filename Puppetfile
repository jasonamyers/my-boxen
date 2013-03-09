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

# Core modules for a basic development environment. You can replace
# some/most of those if you want, but it's not recommended.

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "1.0.2"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",  "1.0.0"
github "gcc",      "1.0.0"
github "git",      "1.0.0"
github "homebrew", "1.0.0"
github "hub",      "1.0.0"
github "inifile",  "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",    "1.0.0"
github "nodejs",   "1.0.0"
github "nvm",      "1.0.0"
github "ruby",     "1.0.0"
github "stdlib",   "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "xquartz",       "1.0.0"
github "vagrant",       "1.0.0"
github "chrome",        "1.0.0"
#github "python",        "1.0.1"
github "virtualbox",    "1.0.0"
github "sublime_text_2","1.0.0"
github "spotify",       "1.0.0"
github "skype",         "1.0.0"
github "onepassword",   "1.0.0"
github "iterm2",        "1.0.0" 
github "macvim",        "1.0.0"
github "heroku",        "1.0.0"
github "dropbox",       "1.0.0"
github "caffeine",      "1.0.0"
github "colloquy",      "1.0.0"
github "flux",          "0.0.1"
github "sizeup",        "1.0.0"
github "postgresql",    "1.0.0"
github "sysctl",        "1.0.0"
github "firefox",       "1.0.1"
github "linkinus",      "1.0.2", :repo => "jasonamyers/puppet-linkinus"
github "wedge",         "1.0.1", :repo => "jasonamyers/puppet-wedge"
github "mou",           "1.0.0", :repo => "jasonamyers/puppet-mou"
github "evernote",      "1.0.0", :repo => "jasonamyers/puppet-evernote"
