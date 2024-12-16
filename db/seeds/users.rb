require 'faker'

examinee = User.examinee
unless examinee.any?
  10.times do |i|
    User.create( email: Faker::Internet.email, password: '123456', role: :examinee )
  end
end

examiner = User.examiner
unless examiner.any?
  5.times do |i|
    User.create( email: Faker::Internet.email, password: '123456', role: :examiner )
  end
end

User.find_or_create_by(email: "admin@examease.com") do |user|
  user.password = '123456'
  user.role = :admin
end

puts "user seeds ran successfully"
