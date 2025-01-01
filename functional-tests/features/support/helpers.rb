def navigate_to_dashboard
  visit '/dashboard'
  LOG.info('Navigated to /dashboard')
end

def verify_dashboard_user_details
  username_text = find('#username-display').text
  password_text = find('#password-display').text

  expect(username_text).to include('Username: test_user')
  expect(password_text).to include('Password: password123')
  LOG.info('Verified username and password are displayed on the dashboard')
end
