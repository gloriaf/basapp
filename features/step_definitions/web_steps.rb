require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

Given /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

Then /^show me the page$/ do
  save_and_open_page
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end
Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should_not have_content(text)
  else
    assert page.has_no_content?(text)
  end
end

Then /^(?:|I )should see "([^"]*)" in the selector "([^"]*)"$/ do |text, selector|
  page.should have_selector selector, text: text
end

Then /^(?:|I )should see "([^"]*)" in a link$/ do |text|
  page.should have_link text
end

Then /^(?:|I )should be on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^I should see an error message$/ do
  page.should have_selector('div.alert.alert-error')
end

