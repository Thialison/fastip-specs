Given("I am on the FasTip home screen") do
    @home = Home.new
    @home.screen_loaded?
end

When("I fill the bill amount with {int}") do |bill_value|
    @home.fill_bills_amount(bill_value)
end

Then("I should see the {string} amount") do |total_amount|
    @home.validate_total_amount(total_amount)
end

When("I change the tip percentage") do
    @settings = Settings.new
    @settings.change_tip_percentage
end

Then("I should see the new tip percentage") do
    @home.validade_new_tip_percentage
end