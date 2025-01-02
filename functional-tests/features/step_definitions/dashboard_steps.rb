When(/^I have accessed the dashboard as a "user" with orders status "([^"]*)"$/) do |orders_status|
  navigate_to_dashboard
  simulate_orders_status(orders_status)
end

Then(/^I can see the current orders "([^"]*)"$/) do |previous_orders_status|
  verify_orders_display(previous_orders_status)
end
