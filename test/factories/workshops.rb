FactoryBot.define do
  factory :workshop do
    name { "Sample Workshop" }
    description { "This is a sample workshop." }
    start_date { Date.today }
    end_date { Date.tomorrow }
    start_time { "09:00 AM" }
    end_time { "05:00 PM" }
    total_seats { 20 }
    registration_fee { 50.00 }
  end
end
