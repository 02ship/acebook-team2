def create_user
  visit '/users/new'
  fill_in('first_name', with: 'test')
  fill_in('last_name', with: 'test_last_name')
  fill_in('email', with: 'test@test.com')
  fill_in('password', with: '123123')
  fill_in('password_confirmation', with: '123123')
  click_button('Create User')
end

def user_login
  visit '/login'
  fill_in('email', with: 'test@test.com')
  fill_in('password', with: '123123')
  click_button 'Login'
end

def log_out_and_in
  click_link "Log out"
  click_link "Log in"
end

def create_post
  fill_in 'message_content', with: 'Hello, world!'
  click_button 'Submit'
end

def create_comment
  fill_in 'add_comment', with: 'This is a comment'
  click_button 'New comment'
end
