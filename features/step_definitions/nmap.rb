require 'aruba/api'
require 'aruba/cucumber/hooks'
require 'aruba/reporting'

World(Aruba::Api)

Given /^nmap is installed$/ do
  #check if nmap is installed
  @output = `which nmap`
  
end

When /^I run nmap against the hostname in the profile on ports (\d+),(\d+)$/ do |arg2, arg3|
  cmd = "nmap \"#{@hostname}\" -p80,443"
  run_simple(unescape(cmd), false)
end
