# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :docs_permission, :class => 'Permission' do
    permission_type "MyString"
    user_id 1
    document_id 1
  end
end
