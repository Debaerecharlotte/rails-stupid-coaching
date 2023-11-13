require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url

    assert_selector "label", text: "Ask a question to your coach"
  end

  test "Saying Helloo yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "Asking a question yields a silly response from the coach" do
    visit ask_url
    fill_in "question", with: "?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end
end
