require_relative "../lib/generate_template"

RSpec.describe GenerateTemplate do
  it "has a version number" do
    expect(GenerateTemplate::VERSION).not_to be nil
  end
end
