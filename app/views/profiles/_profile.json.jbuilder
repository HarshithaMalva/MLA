json.extract! profile, :id, :name, :dob, :education, :gender, :phone, :proffession, :political_career, :other_activity, :address, :user_id, :position_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
