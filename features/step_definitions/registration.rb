Given("I am in login in page") do
	@browser.navigate.to "https://bugtrackers.herokuapp.com"
	sleep 2
end

When("I click login button and see login popup") do
	@browser.find_element(xpath: "//ul/li[2]/form/div/input").click
	sleep 2
	@browser.find_element(xpath: "//*[@id='popup_modal']/div/div").displayed?
end

When("I entered valid usename and password") do
	sleep 2
	@browser.find_element(id: "inputUsername").send_keys "deepikacs" 
	@browser.find_element(id: "inputPassword").send_keys "deepika"
	sleep 2
end

Then("I should see successful signin") do
	@browser.find_element(name: "commit").click	
sleep 2
end

Given("I am in bugtracker home page") do
	@browser.find_element(xpath: "//ul/li[2]/form/div/input[2]").displayed?
end

When("I click create button") do
	sleep 2
	if @browser.find_element(xpath: "//*[@id='create-button']/form/div/input").displayed?
	@browser.find_element(xpath: "//*[@id='create-button']/form/div/input").click
	sleep 3
	puts "I am In Create Issue PoPup"
	end
end
Then("I should see create new issue popup") do
	sleep 2
	@browser.find_element(xpath: "//*[@id='myModalLabel']").displayed?
end


Given("I am in create_issue_popup") do
	@browser.find_element(id: "popup_modal").displayed?
	sleep 2
end
When("I entered valid data for mandatory fields") do
	@browser.find_element(xpath: "//*[@id='Issues3']").send_keys "Internet issue"
	sleep 2
	@browser.find_element(id: "issue_issue_type").send_keys "Bugs"
	sleep 2
# select_list = wait.until {
#     element = browser.find_element(:id, "issue_issue_type")
#     element if element.displayed?
#     element.send_keys "Issues"
# }
# sleep 2
	@browser.find_element(id: "Description3").send_keys "While accessing internet in between it is going to disconnect automatically"
	sleep 2
	@browser.find_element(id: "Comment3").send_keys "Rectify the issue"
end
When("I click on ok button") do
	@browser.find_element(name: "commit").click
end
Then("I able to see new issue in bugtracker home page") do
	@browser.find_element(xpath: "//div[3]/div[2]/div[1]/div[1]").displayed?
	
end

Given("I am in bugtrackers home page") do
	@browser.find_element(xpath: "//ul/li[2]/form/div/input[2]").displayed?
	sleep 2
end
Then("I should see new issue was created") do
	a = @browser.find_element(xpath: "//div[2]/div[1]/div[1]/div/div/a/div[1]").text
	sleep 2
	puts "#{a}"
	if a.include? "Internet issue"
	puts "#{a}"
end
end

