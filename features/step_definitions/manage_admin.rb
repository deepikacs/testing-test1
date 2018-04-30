# Given("I am in sign in page") do
# 	@browser.navigate.to "http://test-docdock.qwinix.io/admin/sign_in"
# end

# When("I enter valid username and password") do
# 	# sleep 2 
# 	@browser.find_element(name:"login_handle").send_keys "darshan" 
# 	# sleep 2 
# 	@browser.find_element(id:"sign_in_password").send_keys "Admin123!" 
# 	# sleep 2 
# end

# When("I click sign in button") do
# 	@browser.find_element(name: "commit").click
# end
# Then("I suucessfuly login") do
# 	@browser.find_element(xpath: "//a[@href='/admin/home']").displayed?

# end

# Given("I am in docdock home_dashboard") do
# 	sleep 2
# 	@browser.find_element(xpath: "//a[@href='/admin/home']").displayed?
# end

# When("I click on to manage_admin button") do
# 	sleep 2
# 	@browser.find_element(xpath: "//a[@href='/admin/admin_users']").click
# end

# When("I click on to new_admin button") do
# 	@browser.find_element(xpath: "//a[@href='/admin/admin_users/new']").displayed?
# 	sleep 2
# 	@browser.find_element(xpath: "//a[@href='/admin/admin_users/new']").click
# 	sleep 2
# end

# Then("I should able to see create_admin popup") do
# 	sleep 2
# 	@browser.find_element(id:"div_modal_generic").click
# end

# Given("I am in create_admin_popup") do
# 	@browser.find_element(xpath: "//*[@id='div_modal_generic']/div").displayed?
# end

# When("I click on to create admin button") do
# 	sleep 2
# 	# @browser.find_element(name: "commit").displayed?
# 	@browser.find_element(name: "commit").click
# end

# Then("I should able to see error {string}") do |string|
# 	@browser.find_element(xpath: "//*[@id='div_modal_generic']/div").displayed?
# 	sleep 2
# end

# 				# ------------succesful creation---------


# # Given("I am in new_admin_popup") do
# #   @browser.find_element(xpath: "//*[@id='div_modal_generic']/div").displayed?
# #   # @browser.find_element(name: "commit").displayed?
# # end

# # When("I entered valid data for all fields") do
# #   @browser.find_element(id:'inp_name').send_keys "abc"
# #    @browser.find_element(id:'inp_username').send_keys "abcdefg"
# #     @browser.find_element(id:'inp_email').send_keys "ab@gmail.com"
# #      @browser.find_element(id:'inp_password').send_keys "Abcdef123!"
# #      sleep 2
# #      @browser.find_element(id:'inp_retype_password').send_keys "Abcdef123!"
# #      sleep 3
# #      @browser.find_element(name:"commit").click
# #      sleep 2
# #  end

# # Then("I should be able to see cretion of new_admin") do
# #   @browser.find_element(name:"query").displayed?
# # end

# Given("I am in manage Admin dashboard") do
# 	@browser.find_element(xpath: "//button[contains(.,'Cancel')]").click
# 	sleep 2
#   @browser.find_element(xpath: "//a[@href='/admin/admin_users']").displayed?
#   sleep 2
#   @browser.find_element(xpath: "//a[@href='/admin/admin_users']").click
#   sleep 2
#   @browser.find_element(name:"query").displayed?
#   sleep 2

# end

# When("I enter existing admin in search bar and click") do
#   @browser.find_element(name:"query").send_keys "deepika"
#   sleep 2
#    @browser.find_element(xpath: "//*[@type='submit']").click

# end

# Then("I able to see existing admin details") do
#    @browser.find_element(id:'div_admin_user_index').displayed?
#    sleep 3

# end

# Given("I am in new_admin_popup") do
# 	@browser.find_element(xpath: "//*[@id='div_modal_generic']/div").displayed?
# end
# When("I enter invalid data for all fields") do

# 	@browser.find_element(id: 'inp_name').send_keys "a"
# 	@browser.find_element(id: 'inp_username').send_keys "ab"
# 	@browser.find_element(id: 'inp_email').send_keys "ab.com"
# 	@browser.find_element(id: 'inp_password').send_keys "Abcdef"
# 	sleep 2
# 	@browser.find_element(id: 'inp_retype_password').send_keys "Ab123"
# 	sleep 3
# end
# When("I click on to create_admin button") do

# 	@browser.find_element(name: 'commit').click
# 	sleep 2
# end
# Then("I should able to see error {string}") do |string|

# 	@browser.find_element(xpath: "//*[@id='div_modal_generic']/div").displayed?
# 	sleep 2
# end


