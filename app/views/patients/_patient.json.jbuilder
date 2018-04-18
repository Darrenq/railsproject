json.extract! patient, :id, :firstname, :lastname, :address, :dob, :illness, :created_at, :updated_at
json.url patient_url(patient, format: :json)
