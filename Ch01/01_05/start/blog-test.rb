require "selenium-webdriver"
require "rspec"

# TEST: sign up for blog
describe "Blog application" do
	describe "signup to the blog application" do
		it "Confirm that a user can successfully signup" do
			driver = Selenium::WebDriver.for :firefox
			# Go to signup form
			driver.navigate.to "https://selenium-blog.herokuapp.com/signup"

			# Fill out and submit form
			username_field = driver.find_element(id: 'user_username')
			username_field.send_keys("user11111")

			email_field = driver.find_element(id: 'user_email')
			email_field.send_keys("user11111@test.com")

			password_field = driver.find_element(id: 'user_password')
			password_field.send_keys("password")

			sign_up_button = driver.find_element(id: 'submit')
			sign_up_button.click

			# Confirm user is signed up successfully
			banner = driver.find_element(id: "flash_success")
			banner_text = banner_text
			expect(banner_text).to eq("Welcome to the alpha blog user11111")

			driver.quit
		end
	end
end
