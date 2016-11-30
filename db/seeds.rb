# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib','seeds','role.csv'))
csv = CSV.parse(csv_text,:headers=>true, :encoding => 'ISO-8859-1')
csv.each do |row|
  r=Role.new
  r.role_name = row['role_name']
  r.save

  puts "#{r.role_name} saved"

end

csv_text = File.read(Rails.root.join('lib','seeds','department.csv'))
csv = CSV.parse(csv_text,:headers=>true, :encoding => 'ISO-8859-1')
csv.each do |row|
  r=Department.new
  r.department_name = row['department_name']
  r.save

  puts "#{r.department_name} saved"

end

  csv_text = File.read(Rails.root.join('lib','seeds','allotment.csv'))
  csv = CSV.parse(csv_text,:headers=>true, :encoding => 'ISO-8859-1')
  csv.each do |row|
    r=Allotment.new
    r.date = row['date']
    r.days_available = row['days_available']
    r.role_id = row['role_id']
    r.department_id = row['department_id']
    r.save

    puts "#{r.date} saved"


end
