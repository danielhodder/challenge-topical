FactoryGirl.define do
  sequence :topic_name do |index|
    "Topic #{index}"
  end

  sequence :username do |index|
    "USER#{index}"
  end
end