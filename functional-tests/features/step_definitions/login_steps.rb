Given('I navigate to the login page') do
  puts "Visiting: #{Capybara.app_host + '/login'}"
  visit '/login'
end

When('I enter valid credentials') do
  fill_in 'username', with: 'test_user'
  fill_in 'password', with: 'password123'
  click_button 'Login'
end

Then('I am redirected to the dashboard') do
  expect(page).to have_current_path('/dashboard')
end
