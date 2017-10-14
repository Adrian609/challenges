require "spec_helper"
require 'capybara/rspec'


feature "User views all projects" do
  go_to_mars = Project.create({ name: "Go To Mars", description: "We outta here" })
  hang_out = Project.create({ name: "Hang Out" })
  call_mom = Project.create({ name: "Call Mom", description: "Prob should" })

  scenario 'user views all projects on the project index page' do
    visit '/'
    expect(page).to have_content("go to mars")
  end
end
