# frozen_string_literal: true

require "rails_helper"

RSpec.describe DemoComponent, type: :component do
  it "renders something useful" do
    render_inline(described_class.new)
    expect(page).to have_content "Hello, components!"
    expect(page).to_not have_content "Goodbye!"
    expect(page).to_not have_css "#demmmmo"
  end

  it "reproduces the bug when used with invalid content" do
    render_inline(described_class.new)

    # I'd expect this to fail, but passes
    within "#demo" do |element|
      expect(element).to have_content "Goodbye!"
    end
  end

  it "reproduces the bug when used with invalid DOM id" do
    render_inline(described_class.new)

    # I'd expect this to fail, but passes
    within "#demmmmo" do |element|
      expect(element).to have_content "Hello, components!"
    end
  end
end
