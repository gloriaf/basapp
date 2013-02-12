# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

#    when /^the home\s?page$/
#      '/'
    when /the home page/
      root_path
    when /the aboutUs page/
      aboutUs_path(locale: 'en')
    when /the contact page/
      contact_path(locale: 'en')
    when /the help page/
      help_path(locale: 'en')
    when /the sign up page/
      '/en/users/sign_up'
    when /the sign in page/
      '/en/users/sign_in'
    when /Logout/
      '/en/users/sign_out'
    when /the task page/
      tasks_path(locale: 'en')
    when /the new task page/
      new_task_path(locale: 'en')
    when /^the show page for task "([^"]*)"$/
      task_path(Task.find_by_title($1).id, locale: 'en')

  
    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
