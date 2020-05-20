require "selenium-webdriver"
require "rspec"

# TEST: Sign up for blog
decribe "Blog applocation" do
describe "signup to the blog application" do
it "confirm that a user can succesfuly signup" do
driver = Selenium::WebDriver.for :firefox
#Go to sign up form
driver.navigate.to "https://selenium-blog.herokuapp.com/signup"

username_field = driver.find_element(id: "user_username")
username_field.send_keys("user")

user_email = driver.find_element(id: "user_email")
user_email.send_keys("b@b.com")

user_pass = driver.find_element(id: "user_password")
user_pass.send_keys("b")

submit_button = driver.find_element(id: "submit")
submit_button.click


banner = driver.find_element(id: "flash-success")
banner_text = banner.text
expect(banner_text).to eq("Welcome to the alpha blog user")

driver.quit