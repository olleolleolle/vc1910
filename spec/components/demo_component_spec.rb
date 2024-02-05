# frozen_string_literal: true

require "rails_helper"

RSpec.describe DemoComponent, type: :component do
  it "renders something useful" do
    render_inline(described_class.new)
    expect(page).to_not have_content "Goodbye!"
    expect(page).to have_selector "#demo"
    expect(page).to_not have_content "Goodbye!"
    expect(page).to_not have_css "#demmmmo"
  end

  context "when the selector is known" do
    it "should run its block" do
      render_inline(described_class.new)

      expect {
        within "#demo" do |element|
          raise "hell"
        end
      }.to raise_error("hell")
    end

    it "should evaluate matchers in the block, too" do
      render_inline(described_class.new)

      expect {
        within "#demo" do |element|
          expect(element).to have_content "Goodbye!"
        end
      }.to raise_error(RSpec::Expectations::ExpectationNotMetError)
    end
  end

  context "when the selector is unknown" do
    it "should evaluate #find on the selector and raise" do
      render_inline(described_class.new)

      expect {
        within "#demmmmo" do |element|
          expect(element).to have_content "Hello, components!"
        end
      }.to raise_error(Capybara::ElementNotFound)
    end
  end
end
