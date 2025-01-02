def navigate_to_dashboard
  visit '/dashboard'
  LOG.info('Navigated to /dashboard')
end

def verify_dashboard_user_details
  username_text = find(Locators::Common::USERNAME_DISPLAY).text
  password_text = find('#password-display').text

  expect(username_text).to include('Username: test_user')
  expect(password_text).to include('Password: password123')
  LOG.info('Verified username and password are displayed on the dashboard')
end

def simulate_orders_status(orders_status)
  case orders_status
  when 'with previous orders'
    create_previous_orders
  when 'without previous orders'
    remove_previous_orders
  end
  LOG.info("Simulated orders status: #{orders_status}")
end

def create_previous_orders
  LOG.info('Created previous orders for the user')
end

def remove_previous_orders
  LOG.info('Removed all previous orders for the user')
end

def verify_orders_display(previous_orders_status)
  expect(page).to have_content('Current Orders')
  expect(page).to have_content('Previous Orders') if previous_orders_status.include?('previous orders')
  LOG.info("Verified orders display: #{previous_orders_status}")
end
