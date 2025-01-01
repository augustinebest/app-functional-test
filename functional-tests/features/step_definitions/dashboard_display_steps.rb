Given(/I have navigated to dashboard/) do
  navigate_to_dashboard
end

Then('I should see the user name and password') do
  verify_dashboard_user_details
end
