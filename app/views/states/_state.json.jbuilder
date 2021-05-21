json.extract! state, :id, :name, :two_letter_code, :country_id, :created_at, :updated_at
json.url state_url(state, format: :json)
