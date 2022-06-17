# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting previous data..."

Employee.destroy_all
Client.destroy_all
Project.destroy_all

puts "🌱 Seeding new data..."

marshal = Employee.create(name: 'Marshal Erikson', title: 'Senior engineer');
lily = Employee.create(name: 'Lili Aldrin', title: 'Junior engineer');
barney = Employee.create(name: 'Barney Stinson', title: 'Project designer');
ted = Employee.create(name: 'Ted Mosby', title: 'Architect');
robin = Employee.create(name: 'Robin Scherbatsky', title: 'Senior engineer');

chocolate = Client.create(name: 'Wonka Industries');
globex = Client.create(name: 'Globex Corporation');
stark = Client.create(name: 'Stark Industries');
wayne = Client.create(name: 'Wayne Enterprises');
acme = Client.create(name: 'Acme Corporation');
initech = Client.create(name: 'Initech');

project1 = Project.create(name: 'New Factory', completed: false, client_id: chocolate.id, employee_id: marshal.id);
project2 = Project.create(name: 'Office building', completed: false, client_id: globex.id, employee_id: lily.id);
project3 = Project.create(name: 'Military base', completed: false, client_id: stark.id, employee_id: barney.id);
project4 = Project.create(name: 'Bank building', completed: false, client_id: wayne.id, employee_id: ted.id);
project5 = Project.create(name: 'Convention Center', completed: false, client_id: acme.id, employee_id: robin.id);

puts "🌱 Done seeding!"