require 'test_helper'

class TopicsTest < ActionDispatch::IntegrationTest
  setup do
    @topic = create_topic()
  end

  test 'topics are displayed on the topic index page' do
    visit(topics_path())

    assert page.has_content?(@topic.name)
  end

  test 'creating a topic does what is expected' do
    visit(topics_path())

    click_link('New Topic')

    fill_in('topic[name]', with: name = Faker::Lorem.sentence)

    click_button('Create Topic')

    assert page.has_no_css?('.alert.alert-error'), "There were errors with the form"
    assert page.has_content?(name)
  end
end