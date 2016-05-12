FactoryGirl.define do
  factory :league do
    name "MyString"
    season "MyString"
    year 1
    final_name "MyString"
    league_type_dropdown "MyString"
    league_type 1
    description "MyText"
    limit 1
    price "9.99"
    start_players_birthday "2016-05-12"
    last_players_birthday "2016-05-12"
    show_on_main_page "2016-05-12"
    open_registration "2016-05-12"
    close_registration "2016-05-12"
    hide_on_main_page "2016-05-12"
    receive_emails false
    email "MyString"
    competitive false
    disabled false
    slug "MyString"
    notes "MyText"
  end
end
