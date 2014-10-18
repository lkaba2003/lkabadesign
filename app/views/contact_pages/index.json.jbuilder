json.array!(@contact_pages) do |contact_page|
  json.extract! contact_page, :id, :first_name, :last_name, :email_address, :message
  json.url contact_page_url(contact_page, format: :json)
end
