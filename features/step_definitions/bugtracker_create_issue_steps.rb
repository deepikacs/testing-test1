Given("I am in Bugtracker home page") do
	@browser.navigate.to "https://bugtrackers.herokuapp.com"
	@browser.find_element(xpath: "//ul/li[2]/form/div/input").click
	sleep 3
end

When("I login with valid username and password") do
	@browser.find_element(id: "inputUsername").send_keys "deepikacs" 
	@browser.find_element(id: "inputPassword").send_keys "deepika"
	sleep 2
	@browser.find_element(name: "commit").click	
end

Then("I should see message {string}") do |string|

	a = @browser.find_element(xpath: "//div[1]/div/div/p").text
	if a.include? "Signed in Successfully" 
		puts "#{a}"
	else
		puts "fail"
	end
	sleep 2
end

Given("I am in Bugtracker dashboard page") do
	@browser.find_element(xpath: "//ul/li[2]/form/div/input[2]").displayed?
	@browser.find_element(xpath: "//*[@id='create-button']/form/div/input").click
end

When("I create a issue with valid data") do
	sleep 3
	@browser.find_element(xpath: "//*[@id='Issues3']").send_keys "broadband issue"
	sleep 2
	@browser.find_element(id: "issue_issue_type").send_keys "Bugs"
	sleep 2
	@browser.find_element(id: "Description3").send_keys "While accessing internet in between it is going to disconnect automatically"
	sleep 2
	@browser.find_element(id: "Comment3").send_keys "fail"
	@browser.find_element(id: "issue_status").send_keys "open"
	@browser.find_element(name: "commit").click
	sleep 2

end

Then("I sholud see issue which was created in the list") do
	sleep 2
	var = "Broadband Issue"
    puts var1 = @browser.find_element(xpath: "//div[3]/div[2]/div[1]").text
	if var1.include? var
		puts "#{var}"
	else
		raise puts "#{var} is not found"
	end
end

