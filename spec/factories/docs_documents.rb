# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :docs_document, :class => 'Document' do
    name "MyString"
    doc_type "MyString"
    user_id 1
    folder_id 1
  end
end
